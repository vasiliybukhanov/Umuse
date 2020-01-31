# Umuse

setup guide:

1. run "create_db.sql" and then "insert_data.sql"
2. replace Model.edmx in "DBLayer" project
3. copy everything between <connectionString></connectionString> and
   <entityFramework></entityFramework> from App.Config in "DBLayer" and replace
   the content of the same tags in Web.Config in "Controllers" project
3.1 to restore roslyn compiler files run this in the Package Manager Console:

Update-Package Microsoft.CodeDom.Providers.DotNetCompilerPlatform -r

4. launch the app ('Controllers" and "WebApplication" should be set to run simultaneously)
5. creds for sign can be found in "WebApplication"'s Web.Config in <appSettings / > section
   "user" - "password" / "admin" - "password"

--
what's done for now: sign in as admin -> click "Genres" on edit screen ->
-> populating table with data from the server
