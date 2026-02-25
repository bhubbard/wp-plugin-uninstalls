#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advcb_allowed_countries'
wp option delete 'advcb_secret_key'
wp option delete 'advcb_blacklisted_ips'
wp option delete 'advcb_trusted_ips'
wp option delete 'advcb_send_email_alerts'
wp option delete 'advcb_alert_email'
wp option delete 'advcb_mode'
wp option delete 'advcb_enable_logs'
wp option delete 'advcb_block_page_title'
wp option delete 'advcb_block_message'
wp option delete 'advcb_enable_redirect'
wp option delete 'advcb_redirect_url'
wp option delete 'advcb_redirect_status_code'
wp option delete 'advcb_http_status_code'
wp option delete 'advcb_log_retention_days'
wp option delete 'advcb_geoip_source'
wp option delete 'advcb_geoip_db_path'
wp option delete 'advcb_enable_captcha'
wp option delete 'advcb_captcha_provider'
wp option delete 'advcb_captcha_site_key'
wp option delete 'advcb_captcha_secret_key'
wp option delete 'advcb_captcha_duration'
wp option delete 'advcb_captcha_threshold'
wp option delete 'advcb_block_registration_by_country'
wp option delete 'advcb_registration_mode'
wp option delete 'advcb_registration_countries'
wp option delete 'advcb_registration_blocked_message'

# Delete Transients
wp transient delete 'advcb_whitelisted_ips'
wp transient delete 'advcb_live_activity'
wp transient delete 'advcb_captcha_verified_ips'

# Clear Cron Jobs
wp cron event delete 'advcb_cleanup_logs_event'

