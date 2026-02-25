#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_client_reports_email_footer'
wp option delete 'wp_client_reports_version'
wp option delete 'wp_client_reports_enable_updates'
wp option delete 'wp_client_reports_enable_content_stats'
wp option delete 'wp_client_reports_default_title'
wp option delete 'wp_client_reports_default_email'
wp option delete 'wp_client_reports_default_intro'
wp option delete 'wp_client_reports_email_from'
wp option delete 'wp_client_reports_name_from'
wp option delete 'wp_client_reports_email_reply'

# Clear Cron Jobs
wp cron event delete 'wp_client_reports_check_for_updates_daily'

