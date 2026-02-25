#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zerospam_configured'
wp option delete 'zerospam_activation_time'
wp option delete 'zerospam_api_monitoring_notice_dismissed'
wp option delete 'zerospam_blocked_email_domains'
wp option delete 'disallowed_keys'
wp option delete 'zero-spam-settings'
wp option delete 'wpzerospam_honeypot'
wp option delete 'zerospam_api_notices'
wp option delete 'zerospam_db_version'
wp option delete 'zerospam_network_notifications_enabled'
wp option delete 'zerospam_network_settings_notifications_enabled'
wp option delete 'zero-spam-last-update'
wp option delete 'wpzerospam'
wp option delete 'zero-spam-zerospam'
wp option delete 'zero-spam-network-zerospam'
wp option delete 'zerospam_settings_audit'
wp option delete 'zero-spam-api-monitoring'
wp option delete 'zero-spam-debug'
wp option delete 'zero-spam-google'
wp option delete 'zero-spam-ipinfo'
wp option delete 'zero-spam-ipstack'
wp option delete 'zero-spam-project_honeypot'
wp option delete 'zero-spam-stop_forum_spam'
wp option delete 'zero_spam_last_api_request'
wp option delete 'zero-spam-comments'
wp option delete 'zero-spam-contactform7'
wp option delete 'zero-spam-davidwalsh'
wp option delete 'zerospam_davidwalsh'
wp option delete 'zero-spam-elementor'
wp option delete 'zero-spam-fluent_form'
wp option delete 'zero-spam-formidable'
wp option delete 'zero-spam-givewp'
wp option delete 'zero-spam-gravityforms'
wp option delete 'zero-spam-ipbase'
wp option delete 'zero-spam-login'
wp option delete 'zero-spam-mailchimp4wp'
wp option delete 'zero-spam-registration'
wp option delete 'zero-spam-security'
wp option delete 'zero-spam-woocommerce'
wp option delete 'zero-spam-wpforms'
wp option delete 'zero-spam-wp-user-avatar'
wp option delete 'zero_spam_last_api_report'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zerospam_promo_shown_%' OR option_name LIKE '_site_transient_zerospam_promo_shown_%'"
wp transient delete 'zerospam_dashboard_data'
wp transient delete 'zero_spam_circuit_open'
wp transient delete 'zero_spam_failure_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zerospam_login_intent_%' OR option_name LIKE '_site_transient_zerospam_login_intent_%'"

# Clear Cron Jobs
wp cron event delete 'zerospam_network_weekly_summary'
wp cron event delete 'zerospam_check_api_anomalies'
wp cron event delete 'zerospam_aggregate_api_data'
wp cron event delete 'zerospam_aggregate_daily_stats'
wp cron event delete 'zerospam_async_share_detection'
wp cron event delete 'zerospam_api_usage_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zerospam_promo_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zerospam_promo_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zerospam_promo_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zerospam_promo_dismissed'"
