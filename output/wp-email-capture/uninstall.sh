#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_email_capture_theme_affiliate_link'
wp option delete 'wp_email_capture_name_required'
wp option delete 'wp_email_capture_recaptcha_client_api_key'
wp option delete 'wp_email_capture_recaptcha_server_api_key'
wp option delete 'wp_email_capture_link'
wp option delete 'wp_email_capture_default_styling'
wp option delete 'wp_email_capture_name_delimeter'
wp option delete 'wp_email_capture_signup'
wp option delete 'wp_email_capture_redirection'
wp option delete 'wp_email_capture_send_email_html'
wp option delete 'dismissed-wp_email_capture_mysql_deprecated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'wp_email_capture_enable_gdpr'
wp option delete 'wp_email_capture_unit_for_privacy'
wp option delete 'wp_email_capture_number_for_privacy'
wp option delete 'wp_email_capture_db_version'
wp option delete 'wp_email_capture_from'
wp option delete 'wp_email_capture_from_name'
wp option delete 'wp_email_capture_subject'
wp option delete 'wp_email_capture_body'
wp option delete 'wp_email_capture_disabled_headers'
wp option delete 'wp_email_capture_recaptcha_api_type'
wp option delete 'WPEC_Tracking_Hash'

# Clear Cron Jobs
wp cron event delete 'wp_email_capture_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_email_capture_setup_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_email_capture_setup_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_email_capture_setup_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_email_capture_setup_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_email_capture_upsell_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_email_capture_upsell_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_email_capture_upsell_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_email_capture_upsell_ignore'"
