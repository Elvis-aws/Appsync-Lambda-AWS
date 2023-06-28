# Run application

zip deploy1.zip index.py
aws s3 cp deploy1.zip s3://my-bucket/fa-044/

zip deploy2.zip index.py
aws s3 cp deploy2.zip s3://my-bucket/fa-044/


mkdir python
sudo pip3 install --pre gql[all] -t python
zip -r layer.zip python
aws s3 cp layer.zip s3://my-bucket/fa-044/


aws s3 cp . s3://my-bucket/fa-044/ --recursive

