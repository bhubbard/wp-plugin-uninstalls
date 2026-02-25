#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailhawk_default_from_name'
wp option delete 'mailhawk_default_from_email_address'
wp option delete 'mailhawk_log_retention_in_days'
wp option delete 'mailhawk_disable_email_logging'
wp option delete 'mailhawk_retry_failed_emails'
wp option delete 'mailhawk_failed_email_retries'
wp option delete 'mailhawk_mta_credential_key'
wp option delete 'mailhawk_license_server_token'
wp option delete 'mailhawk_delete_all_data'
wp option delete 'mailhawk_ms_sender_domain'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'mailhawk_is_connected'
wp option delete 'mailhawk_access_token'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dates'"

# Delete Transients
wp transient delete 'mailhawk_is_suspended'
wp transient delete 'mailhawk_email_usage'

# Clear Cron Jobs
wp cron event delete 'mailhawk/send_quarantine_notice'
wp cron event delete 'mailhawk/monthly'
wp cron event delete 'mailhawk_trim_log_entries'
wp cron event delete 'mailhawk_retry_failed_emails'

