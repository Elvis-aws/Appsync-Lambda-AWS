


*******
GraphQL
*******
        - GraphQL is a data language that was developed to enable apps to fetch data from servers
        - It has a declarative, self-documenting style
        - In a GraphQL operation, the client specifies how to structure the data when it is returned by the server
        - This makes it possible for the client to query only for the data it needs, in the format that it needs it in
        **************************************
        GraphQL has three top-level operations
        **************************************
            - Query - read-only fetch
            - Mutation - write, followed by a fetch
            - Subscription - long-lived connection for receiving data
        - GraphQL exposes these operations via a schema that defines the capabilities of an API
        - A schema is comprised of types, which can be root types (query, mutation, or subscription)
          or user-defined types
        - Developers start with a schema to define the capabilities of their GraphQL API, which a client application
          will communicate with
        - After a schema is defined, the fields on a type need to return some data
        - The way this happens in a GraphQL API is through a GraphQL resolver
        - This is a function that either calls out to a data source or invokes a trigger to return some value
          (such as an individual record or a list of records). Resolvers can have many types of data sources, such as
          NoSQL databases, relational databases, or search engines. You can aggregate data from multiple data sources
          and return identical types, mixing and matching to meet your needs.
        ******
        Schema
        ******
            - After a schema is connected to a resolver, a client app can issue a GraphQL query or, optionally, a
              mutation or subscription
            - A query will have the query keyword followed by curly braces, and then the field name, such as allPosts
            - After the field name is a second set of curly braces with the data that you want to return

            query {
             allPosts {
               id
               author
               title
               content
              }
            }