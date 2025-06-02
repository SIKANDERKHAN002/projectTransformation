*** Settings ***

*** Variables ***

*** Test Cases ***
This is new test case
    [Documentation]    This is a new test case to demonstrate the transformation.
    [Tags]    example    demo
    Log    This is a new test case for demonstration purposes.
    # Add more steps as needed    
    Log  ${EXECDIR}
    Log  ${CURDIR}
    Log  ${SUITE_NAME}
    Log  ${TEST_NAME}
    Log  ${TEST_TAGS}
    Log  ${OUTPUT_DIR}
    Log  ${OUTPUT_FILE}
    Log  ${TEMPDIR}
   