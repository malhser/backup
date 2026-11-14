
# Daily Automated Backup Script

## Purpose
This Bash script automatically compresses the application
data directory and saves a dated backup in the backups directory.

## Source Directory
/home/user/app_data

## Backup Directory
/home/user/backups

## Execution
Make the script executable:

    chmod u+x daily_backup.sh

Run the script:

    ./daily_backup.sh

## Backup Format
backup_YYYY-MM-DD.tar.gz

## Cron Schedule
    0 0 * * * /home/user/app_data/daily_backup.sh

## Verification
Use the following command:

    ls -lh ~/backups/
