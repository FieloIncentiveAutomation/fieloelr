## Create Question
 
### Objectives 
This use case describes the creation of a Question
 
### Preconditions
The administrator must be logged in
The related module is already created (Use Case [*Create Module*](https://github.com/FieloIncentiveAutomation/fieloelr/blob/feature/elrbackend/doc/UC-ELR-0003-Create%20Module.md) already run)
 
### Postconditions
A question was created
 
### Flow of Events
 
### Basic Flow
 
1. The system receives the field values for the question
2. The administrator presses the Save button
3. The system verifies that the related module is inactive
4. The system verifies that the related module does not have module responses
5. The system verifies that the Question Text field is not null
6. The system verifies that the Order field is not null
7. The system verifies that the “Correct Weight” field is null
8. The system automatically updates the “Correct Weight” field with value = 1
9. The system verifies that the “Incorrect Weight” field is not null
10. The system verifies that the “Penalty per Attempt” field is between 0 and 100
11. The system verifies that the question “Type” is “Single Choice” 
12. The system saves the question
13. The system displays the question detail page with the options to Edit or Delete
14. End of flow
 
### Alternative flows
 
##### 1. The related module is active (step 3 of basic flow)
   1. The system verifies that the related module is active
   2. The system does not save the question
   3. The system displays an error message
   4. End of flow
 
##### 2. The related module has module response (step 4 fo basic flow
   1. The system verifies that the related module has module response
   2. The system does not save the question
   3. The system displays an error message
   4. End of flow

##### 3. “Question Text” field is null (step 5 of basic flow)
   1. The system verifies that the “Question Text” field is null
   2. The system does not save the question
   3. The system displays an error message
   4. End of flow
 
##### 4. “Order” field is null (step 6 of basic flow)
   1. The system verifies that the Order field is null
   2. The system automatically numbers the Order field 
   3. Back to step 7 of basic flow
 
##### 5. “Correct Weight” field is greater than one and “Question Pool” of related module is not null (step 7 of basic flow)
   1. The system verifies that the “Correct Weight” field is greater than one
   2. The system verifies that “Question Pool” field of the related module is not null
   3. Back to step 8 of basic flow
 
##### 6. “Correct Weight” field is negative and “Weighted Questions” of related module is “true” (step 7 of basic flow)
   1. The system verifies that the "Correct Weight" field is negative
   2. The system does not save the question
   3. The system displays an error message
   4. End of flow
 
##### 7. “Correct Weight” field is greater than one and “Weighted Questions” of related module is “false” (step 7 of basic flow)
   1. The system verifies that the "Correct Weight" field is greater than 1
   2. The system verifies that the “Weighted Questions” field of the related module is set to “false” 
   3. Back to step 8 of basic flow
 
##### 8. “Incorrect Weight” field is null (step 9 of basic flow)
   1. The system verifies that the “Incorrect Weight” field is null
   2. The system automatically updates the “Incorrect Weight” field with value = 0
   3. Back to step 10 of basic flow
 
##### 9. “Penalty per Attempt” field is null (step 10 of basic flow)
   1. The system verifies that the “Penalty per Attempt” field is null
   2. The system automatically updates the “Penalty per Attempt” field with value = 0
   3. Back to step 11 of basic flow
 
##### 10. “Penalty per Attempt” field is not valid (step 10 of basic flow)
   1. The system verifies that the "Penalty per attempt" field is not between 0 - 100
   2. The system does not save the question
   3. The system displays an error message
   4. End of flow
 
##### 11. Question “Type” is null (step 11 of basic flow)
   1. The system verifies that the “Type” field is null
   2. The system does not save the question
   3. The system displays an error message
   4. End of flow
 
##### 12. Question “Type” is “Statement” (step 11 of basic flow)
   1. The system verifies that the “Type” field is “Statement”
   2. Back to step 12 of basic flow
 
##### 13. Question “Type” is “Multiple Choice” (step 11 of basic flow)
   1. The system verifies that the “Type” field is “Multiple Choice”
   2. Back to step 12 of basic flow
 
##### 14. Question “Type” is “Short Answer” (step 11 of basic flow)
   1. The system verifies that the “Type” field is “Short Answer”
   2. Back to step 12 of basic flow
 
##### 15. Question “Type” is “Matching Options” (step 11 of basic flow)
   1. The system verifies that the “Type” field is “Matching Options”
   2. Back to step 12 of basic flow
 
##### 16. Delete question when related module is inactive and does not have module response (step 13 of basic flow)
   1. The administrator presses the Delete button
   2. The system verifies that the related module is not active
   3. The system deletes the question
   4. The system deletes all related answers options
   5. End of flow

##### 17. Delete question when related module is inactive and has module response (step 13 of basic flow)
   1. The administrator presses the Delete button
   2. The system verifies that the related module is inactive and has module response
   3. The system does not delete the question
   4. The system displays an error message
   5. End of flow
   
##### 18. Delete question when related module is active (step 13 of basic flow)
   1. The administrator presses the Delete button
   2. The system verifies that the related module is active
   3. The system does not delete the question
   4. The system displays an error message
   5. End of flow
   
##### 19. Edit question type (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the “Type” field
   3. The administrator presses the Save button
   4. The system does not update the question
   5. The system displays an error message
   6. End of flow
   
##### 20. Edit the related module (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the “Module” field
   3. The administrator presses the Save button
   4. The system does not update the question
   5. The system displays an error message
   6. End of flow
   
##### 21. Edit question when related module is active (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator makes the desired changes 
   3. The administrator presses the Save button
   4. The system verifies that the related module is active
   5. The system does not update the question
   6. The system displays an error message
   7. End of flow
 
##### 22. Edit question when related module is inactive and does not have module response (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator makes the desired changes (except in Type and Module fields)
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and doesn't have module response
   5. The system verifies that all other validations succeed
   6. The system updates the question
   7. The system displays the question detail page
   8. End of flow

##### 23. Edit Question Name when related module is inactive and has module response (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the question name
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and has module response
   5. The system verifies that all other validations succeed
   6. The system updates the question
   7. The system displays the question detail page
   8. End of flow
   
##### 24. Edit Question Text when related module is inactive and has module response (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the question name
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and has module response
   5. The system verifies that all other validations succeed
   6. The system updates the question
   7. The system displays the question detail page
   8. End of flow
   
##### 25. Edit Correct Weight when related module is inactive and has module response (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the Correct Weight
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and has module response
   5. The system does not update the question
   6. The system displays an error message
   7. End of flow
   
##### 26. Edit Penalty per Attempt when related module is inactive and has module response (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the Penalty per Attempt
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and has module response
   5. The system does not update the question
   6. The system displays an error message
   7. End of flow
   
##### 27. Edit Incorrect Weight when related module is inactive and has module response (step 13 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the Incorrect Weight
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and has module response
   5. The system does not update the question
   6. The system displays an error message
   7. End of flow
 
##### 28. Edit question when “Question Pool” of related module is different from null (step 12 of basic flow)
   1. The administrator presses the Edit button
   2. The administrator changes the “Correct Weight” to a value greater than 1
   3. The administrator presses the Save button
   4. The system verifies that the related module is inactive and doesn't have module response
   5. The system verifies that the “Question Pool” field of the related module is different from null
   6. The system verifies that all other validations succeed
   7. The system automatically updates the “Correct Weight” field with value = 1
   8. The system updates the question
   9. The system displays the question detail page
   10. End of flow
 
