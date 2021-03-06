# kills any other users using test database on local environment
# http://stackoverflow.com/questions/2369744/rails-postgres-drop-error-database-is-being-accessed-by-other-users
task :kill_postgres_connections => :environment do
  db_name = "lovemark_test"
  sh = <<EOF
ps xa \
  | grep postgres: \
  | grep #{db_name} \
  | grep -v grep \
  | awk '{print $1}' \
  | sudo xargs kill
EOF
  puts `#{sh}`
end

task "db:drop" => :kill_postgres_connections