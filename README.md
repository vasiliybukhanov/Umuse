# Umuse

setup guide:

1. run "create_db.sql" and then "insert_data.sql"
2. replace Model.edmx in "DBLayer" project
3. copy everything between <connectionString></connectionString> and
   <entityFramework></entityFramework> from App.Config in "DBLayer" and replace
   the content of the same tags in Web.Config in "Controllers" project

4. launch the app ('Controllers" and "WebApplication" are set to run simultaneously)
5. creds for sign can be found in "WebApplication"'s Web.Config in <appSettings / > section
   "user" - "password" / "admin" - "password"

--
what's done for now: sign in as admin -> click "Genres" pn edit screen ->
-> populating table with data from the server
