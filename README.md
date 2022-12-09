# Alfred Workflow to Copy/Open JIRA Tickets

## To Use

Type `jira` and then space. You should see 7 recent ticket sorted by status:

* ` JIRA Copy BB-1111: An amazing ticket` -> this will copy BB-1111 to the clipboard
* ` JIRA Open BB-1111: An amazing ticket` -> this will open the ticket in the browser


## To Install

1. Setup JIRA CLI
    ```
    brew install go-jira

    mkdir ~/.jira.d

    cat << EOF
    endpoint: https://your-company.atlassian.net
    user: your-email
    password-source: keyring
    EOF > ~/.jira.d/config.yml

    jira session
    ```

2. Setup Workflow

   - add `alfred.alfredworkflow` to Alfred
   - in the Workflow, add an Environment Variable: SCRIPT_PATH = <path to this folder>
