## Create Module Response
 
### Objectives 
This use case describes the creation of a Module Response
 
### Preconditions
The administrator must be logged in  
The related module is already created (Use Case [*Create Module*](https://github.com/FieloIncentiveAutomation/fieloelr/blob/feature/elrbackend/doc/UC-ELR-0003-Create%20Module.md) already run)
 
### Postconditions
A module response was created
 
### Flow of Events
 
### Basic Flow
   1. The system receives the field values for the module response
   2. The administrator presses the Save button
   3. The system verifies that the “Module” lookup field is not null
   4. The system verifies that the related module is active
   5. The system verifies that “Member” field is not null
   6. The system verifies that the member belongs to the program of the related course
   7. The system verifies that the member belongs to at least one of the segments of the related course
   8. The system verifies that the related course is active
   9. The system verifies that the member is approved in the predecessors modules
   10. The system verifies that the date of the response in within the period of the course
   11. The system automatically completes the “Number of Attempts” field
   12. The system verifies that the “Number of Attempts” is less than the “Attempts Allowed” of the related module
   13. The system verifies that the related course subscription mode is manual and the related course status already exists for the member   
   14. The system automatically fills the “Course Status” field with the existing course status
   15. The system verifies that “IsApproved” field is set to “false”
   16. The system saves the module response
   17. The system displays the module response detail page with the options to Edit or Delete
   18. End of flow
 
### Alternative flows
 
##### 1. Module field is null (step 3 of basic flow)
   1. The system verifies that the Module field is null
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
 
##### 2. The related module is not active (step 4 of basic flow)
   1. The system verifies that the related module is not active
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
 
##### 3. Member field is null (step 5 of basic flow)
   1. The system verifies that the Member field is null
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
   
##### 4. Member does not belong to the program of the related course (step 6 of basic flow)
   1. The system verifies that the member does not belong to the program of the related course
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
   
##### 5. Member does not belong to any of the segments of the related course (step 7 of basic flow)
   1. The system verifies that the member doesn't belong to any of the segments of the related course
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
   
##### 6. The related course is not active (step 8 of basic flow)
   1. The system verifies that the related course is not active
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
   
##### 7. Member is not approved in the predecessors modules (step 9 of basic flow)
   1. The system verifies that the Member is not approved in the predecessors modules
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
 
##### 8. The date of the response is not within the period of the course (step 10 of basic course)
   1. The system verifies that the date value is not within the period of the course
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
 
##### 9. Number of Attempts is equal to the “Attempts Allowed” of the related module (step 12 of basic flow)
   1. The system verifies that the “Number of Attempts” is equal to the “Attempts Allowed” of related module
   2. The system sets the “Last Chance” field to “true”
   3. Back to step 13 of basic flow)
 
##### 10. Number of Attempts is greater than the “Attempts Allowed” of related module (step 12 of basic flow)
   1. The system verifies that the “Number of Attempts” is greater than the “Attempts Allowed” of related module
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
 
##### 11. The related course subscription mode is manual and the related course status does not exist (step 13 of basic flow)
   1. The system verifies that the related course subscription mode is manual and the related course status does not exists
   2. The system does not create the module response
   3. The system displays an error message
   4. End of flow
 
##### 12. The related course subscription mode is automatic and the related course status already exists (step 13 of basic flow)
   1. The system verifies that the related course subscription mode is automatic and the related course status already exists
   2. Back to step 14 of basic flow
 
##### 13. The related course subscription mode is automatic and the course status does not exist (step 13 of basic flow)
   1. The system verifies that the related course subscription mode is automatic and the related course status does not exists
   2. The system calls the Use Case [*Create Course Status*](https://github.com/FieloIncentiveAutomation/fieloelr/blob/feature/elrbackend/doc/UC-ELR-0013-Create%20Course%20Status.md)
   3. Back to step 14 of basic flow
 
##### 14. The administrator sets the “IsApproved” field to “true” (step 15 of basic flow)
   1. The system verifies that “IsApproved” field is set to “true”
   2. The system automatically sets the “IsApproved” fiels to “false”
   3. Back to step 16 of basic flow
 
##### 15. Delete a module response not submitted (step 17 of basic flow)
   1. The administrator presses the Delete button of a module response not submitted 
   2. The system deletes the module response
   3. The system deletes all related question responses and answers
   4. End of flow
 
##### 16. Delete a module response already submitted (step 17 of basic flow)
   1. The administrator presses the Delete button of a module response already submitted
   2. The system deletes the module response
   3. The system deletes all related questions responses and answers
   4. End of flow
 
##### 17. Edit the course status of a module response not submitted (step 17 of basic flow)
   1. The administrator presses the Edit button of a module response not submitted
   2. The administrator changes the Course Status field
   3. The administrator presses the Save button
   4. The system does not update the module response
   5. The system displays an error message
   6. End of flow
   
##### 18. Edit the member of a module response not submitted (step 17 of basic flow)
   1. The administrator presses the Edit button of a module response not submitted
   2. The administrator changes the Member field
   3. The administrator presses the Save button
   4. The system does not update the module response
   5. The system displays an error message
   6. End of flow
   
##### 19. Edit the module of a module response not submitted (step 17 of basic flow)
   1. The administrator presses the Edit button of a module response not submitted
   2. The administrator changes the Module field
   3. The administrator presses the Save button
   4. The system does not update the module response
   5. The system displays an error message
   6. End of flow
 
##### 20. Edit the date of a module response not submitted (step 17 of basic flow)
   1. The administrator presses the Edit button of a module response not submitted
   2. The administrator changes the Date field
   3. The administrator presses the Save button
   4. The system updates the module response
   5. The system displays the module response detail page with the options to Edit or Delete
   6. End of flow 
   
##### 21. Edit a module response already submitted (step 17 of basic flow)
   1. The administrator presses the Edit button of a module response already submitted 
   2. The administrator makes any change 
   3. The administrator presses the Save button
   4. The system does not update the module response
   5. The system displays an error message
   6. End of flow
 
##### 22. Submit a module response (step 17 of basic flow)
   1. The administrator presses the Edit button of a module response not submitted
   2. The administrator changes the field “IsSubmitted” from “false” to “true”
   3. The system calls the use case [*Submit Module Response*](https://github.com/FieloIncentiveAutomation/fieloelr/blob/feature/elrbackend/doc/UC-ELR-0010-Submit%20Module%20Response.md)
   4. End of flow
