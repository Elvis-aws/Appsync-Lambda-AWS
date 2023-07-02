# What is Appsync
    # Appsync is used to develope applications and stands between the client and back-end services.
    # It helps us make a lay-out of client data into a meaningfull form
    # It uses GraphQL Schema to define this data lay-out
    # it also uses resolvers that will help resolve the different data types used in our schema
    # Data sources are the back-end services

# Configure Environment
    # virtualenv env
    # source env/bin/activate
    # pip3 install -r requirements.txt
    # pip3 freeze > requirements.txt
# Install ggl
    # sudo pip3 install --pre "gql[all]"
# Run Application
    # Copy the lambda function URL
    # Add field and specify eith Put,List, Delete as queuery parameters
        # LambdaUrl/?field=Put 
        # LambdaUrl/?field=List
        # LambdaUrl/?field=Delete&object_name=20230702085255.txt
    # Request already has apikey in code so no need to add key



# $ > curl \
    -XPUT https://o5t6cetzdoxofd4x4j6y5zweey0zeawo.lambda-url.eu-west-2.on.aws/?field=Put \
    -H "Content-Type:application/json" 