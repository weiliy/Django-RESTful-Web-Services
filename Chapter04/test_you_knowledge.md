## Test your knowledge
Let's see whether you can answer the following questions correctly:

### The @api\_view decorator declared in the rest\_framework.decorators module allows you to:
- [ ] Specify which is the model related to the function based view
- [x] Specify which are the HTTP verbs that the function based view to which it is applied can process
- [ ] Specify which is the serializer related to the function based view

### The @api\_view decorator is a wrapper that converts a function based view into a subclass of which of the following classes:
- [ ] django.Http.Response.HttpResponse
- [x] rest\_framework.views.APIView
- [ ] rest\_framework.serializers.Serializer

### Which of the following settings key in the REST\_FRAMEWORK dictionary allows you to override the global setting with a tuple of string whose values indicate the default classes that you want to use for parsing backends:
- [x] 'DEFAULT\_PARSER\_CLASSES'
- [ ] 'GLOBAL\_PARSER\_CLASSES'
- [ ] 'REST\_FRAMEWORK\_PARSING\_CLASSES'

### Which of the following classes is able to parse application/json content type when we work with the @api\_view decorator and its default settings:
- [ ] django.parsers.JSONParser
- [ ] rest\_framework.classes.JSONParser
- [x] rest\_framework.parsers.JSONParser

### Which of the following classes is able to parse application/x-www-form-urlencoded content type when we work with the @api\_view decorator and its default settings:
- [ ] django.parsers.XWWWUrlEncodedParser
- [ ] rest\_framework.classes.XWWWUrlEncodedParser
- [x] rest\_framework.parsers.FormParser

