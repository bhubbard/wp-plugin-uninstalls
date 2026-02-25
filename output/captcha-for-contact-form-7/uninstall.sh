#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f12_cf7_captcha_installed_at'
wp option delete 'f12_cf7_captcha_installation_uuid'
wp option delete 'f12_cf7_captcha_telemetry_counters'
wp option delete 'f12-cf7-captcha-settings'
wp option delete 'disallowed_keys'
wp option delete 'f12_cf7_captcha_review_dismissed'
wp option delete 'f12_cf7_captcha_review_remind_later'
wp option delete 'f12_cf7_captcha_review_remind_count'
wp option delete 'f12_cf7_ip_ban_enabled'
wp option delete 'f12-cf7-captcha_version'
wp option delete 'f12_captcha_settings'
wp option delete 'f12-cf7-captcha-settings-backup'
wp option delete 'f12-cf7-captcha-form-overrides'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"

# Clear Cron Jobs
wp cron event delete 'f12_cf7_captcha_daily_telemetry'
wp cron event delete 'weeklyIPClear'
wp cron event delete 'dailyCaptchaClear'
wp cron event delete 'dailyCaptchaTimerClear'
wp cron event delete 'f12_captcha_pool_fill'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_builder_status'"
