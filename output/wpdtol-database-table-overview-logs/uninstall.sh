#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdtol_database_table_overview_logs_version'
wp option delete 'wpdtol_database_table_overview_logs_email_report_recipients'

# Clear Cron Jobs
wp cron event delete 'wpdtol_database_table_overview_logs_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdtol_database_table_overview_logs_admin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdtol_database_table_overview_logs_admin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdtol_database_table_overview_logs_admin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdtol_database_table_overview_logs_admin_notice_dismissed'"
