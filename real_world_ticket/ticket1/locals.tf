# Do not alter below tags
locals {
  task_tags = {
    Topic = "ec2",
    Ticket = "1"
    Env  = "Dev"
    Team = "DevOps"
    quarter = "Q1"
    CreatedBy = "DevOps"
    region = "us-east-1"
    current_timestamp  = formatdate("YYYY-MM-DD",  timestamp())
    current_year  = formatdate("YYYY",  timestamp())
    current_month  = formatdate("MM",  timestamp())
    current_day  = formatdate("DD",  timestamp())
    current_hour  = formatdate("HH",  timestamp())
    current_minute  = formatdate("mm",  timestamp())
    current_second  = formatdate("ss",  timestamp())
    current_time  = formatdate("HH:mm:ss",  timestamp())
    current_date  = formatdate("YYYY-MM-DD",  timestamp())
    current_datetime  = formatdate("YYYY-MM-DD HH:mm:ss",  timestamp())
    bastion = "project.evolvecyber.com"
    domain = "evolvecyber.com"
    tld = "com"
    project_name = "evolvecyber"
    project_name_lower = "evolvecyber"
    project_name_upper = "EVOLVECYBER"
    project_name_short = "evolve"
    project_name_short_upper = "EVOLVE"
    project_name_short_lower = "evolve"
    project_name_short_upper_first = "E"
    project_name_short_lower_first = "e"
    project_name_short_upper_first_lower_second = "E"
    project_name_short_lower_first_upper_second = "E"
    project_name_short_upper_first_lower_second_upper_third = "E"
    project_name_short_lower_first_upper_second_lower_third = "E"
  }
}

