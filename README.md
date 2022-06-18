# NodeJS + MySQL


  *important note--> This project is based on mysql password [username:root , password: root] 
  if there will be other password mysql server have kindly change in db.config file in Neha_NoodeJS application
  
  
1.libraries/frameworks
  1.1 Express
  1.2 body-parser 
  1.3 multer
  1.4 http-errors
  1.5 sequlize
  1.6 http
 
2. APIs
  2.1 Post : To insert hospital data
      url: http://localhost:3000/api/hospitals 
      key:name
  2.2  Post : Adding a new patient, upload the patient photo
      url: http://localhost:3000/api/patients
      key: 
          1. name
          2. address
          3. email
          4. phone_number
          5. password
          6. photo
          7. psychiatrist_id 
          *note --> there are 21 records of psychiatrists in db,  psychiatrist_id sholud be between 1-21 otherwise not record found will be there
          
        Get: Fetching all the patients in an order for a single psychiatrist
        
        code url:http://localhost:3000/api/patients/:psychiatristId
        
        url:http://localhost:3000/api/patients/20
        
        *note--> At the end of url there is psychiatristId there are 21 records of psychiatrists 
        
   2.3 Post:  A psychiatrist registers him/herself    
       url: http://localhost:3000/api/psychiatrists
       key: 
           1. fname
           2. lname
           3. hspt_name
           4. phone_number
           5. pincode
           6. state
           
        Get:  Fetch the count of how many patients are registered for each psychiatrist in a hospital.
              This should return, hospital name, psychiatrist name, patients count.
              
        url: http://localhost:3000/api/psychiatrists/patients
        
  3. How to run tests and deploy the project
 
     3.1 clone the repo https://github.com/NehaBatra09/Neha_NodejsTask.git
     3.2 open project with visual code
     3.3  *important note--> This project is based on mysql password [username:root , password: root] 
           if there will be other password mysql server have kindly change in db.config file in Neha_NoodeJS applicatio
     3.4 npm install
     3.5 node .\bin\www
     3.5 open the postman
     3.7.6 run the endpoints
     
  *important note:--> In it there is database foler and DBSchema file
           
           
          
      
      
  
  
