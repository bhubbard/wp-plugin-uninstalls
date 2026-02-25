#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_diagnostic_cron_calls'
wp option delete 'newsletter_diagnostic_cron_data'
wp option delete 'newsletter_dismissed'
wp option delete 'newsletter_logger_secret'
wp option delete 'newsletter_followup'
wp option delete 'newsletter_diagnostic_send_calls'
wp option delete 'newsletter_forms'
wp option delete 'newsletter_profile'
wp option delete 'newsletter_extension_versions'
wp option delete 'newsletter_main'
wp option delete 'newsletter_emails'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'newsletter_emails_%'"
wp option delete 'dmc_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log_level'"
wp option delete 'newsletter_log_level'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_install_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_available_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_backup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_run'"
wp option delete 'newsletter_email'
wp option delete 'newsletter_diagnostic'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cron_calls'"
wp option delete '_transient_newsletter_main_engine'
wp option delete '_transient_timeout_newsletter_main_engine'
wp option delete 'newsletter_feed_demo_disable'
wp option delete 'digital-media-combined'
wp option delete 'newsletter_subscription_template'
wp option delete 'newsletter_feed'

# Delete Transients
wp transient delete 'newsletter_main_engine'
wp transient delete 'template_extensions_json'
wp transient delete 'newsletter_transient_test'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'digital-media-combined'
wp cron event delete 'newsletter_update'
wp cron event delete 'newsletter_check_versions'
wp cron event delete 'newsletter_statistics_version_check'
wp cron event delete 'newsletter_reports_version_check'
wp cron event delete 'newsletter_feed_version_check'
wp cron event delete 'newsletter_popup_version_check'
wp cron event delete 'newsletter_feed'

