## Test your knowledge
Let's see whether you can answer the following questions correctly.

### The related\_name argument for the django.db.models.ForeignKey class initializer specifies:
- [x] The name to use for the relation from the related object back to this object
- [ ] The related model class name
- [ ] The related model primary key attribute name

### If we use the following line to declare the pilot field in the Competition model: pilot = models.ForeignKey(Pilot, related\_name='competitions', on\_delete=models.CASCADE). What will Django's ORM do whenever we delete a specific Pilot?
- [ ] All the related competitions in which this Pilot participated will remain without changes in the database
- [x] All the related competitions in which this Pilot participated will be deleted too
- [ ] All the related pilots that are related to the Competition will be deleted too

### The rest\_framework.serializers.HyperlinkedModelSerializer class is a type of ModelSerializer that represents the relationships to other model instances with:
- [ ] Primary key values
- [ ] Foreign key values
- [x] Hyperlinks

### Which of the following attributes defined in the Meta inner class for a class that inherits from ModelSerializer specifies the model related to the serializer that is being declared:
- [ ] related-model
- [x] model
- [ ] main-model

### Which of the following attributes defined in the Meta inner class for a class that inherits from ModelSerializer specifies the tuple of string whose values indicate the field names that we want to include in the serialization from the model related to the serializer:
- [ ] included-fields
- [x] fields
- [ ] serialized-fields
