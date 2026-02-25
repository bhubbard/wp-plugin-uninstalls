#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a11yb_install_id'
wp option delete 'a11ybridge_cloud_settings'
wp option delete 'a11ybridge_ai_settings'
wp option delete 'a11ybridge_simplification_settings'
wp option delete 'a11ybridge_pro_license_settings'
wp option delete 'a11yb_license_key_hash'
wp option delete 'a11ybridge_plugin_general_settings'
wp option delete 'a11yb_alttext_daily_last_id'
wp option delete 'a11ybridge_advanced_settings'
wp option delete 'a11ybridge_scanner_settings'
wp option delete 'a11yb_next_update_at_ts'
wp option delete 'a11yb_reset_date_ts'
wp option delete 'a11yb_monthly_limit'
wp option delete 'a11yb_ai_credits_remaining'
wp option delete 'a11yb_license_status'
wp option delete 'a11yb_license_expires_at_ts'
wp option delete 'a11ybridge_user_profile_settings'
wp option delete 'a11ybridge_user_privacy_settings'
wp option delete 'a11ybridge_user_storage_settings'
wp option delete 'a11ybridge_user_defaults_settings'
wp option delete 'a11ybridge_voice_settings'
wp option delete 'a11yb_license_domain'
wp option delete 'a11yb_plan_level'
wp option delete 'a11yb_monthly_used'
wp option delete 'a11yb_reset_date'
wp option delete 'a11yb_license_created_at'
wp option delete 'a11yb_license_expires_at'
wp option delete 'a11yb_license_environment'
wp option delete 'a11yb_usage_period'
wp option delete 'a11yb_license_state'
wp option delete 'a11yb_next_update_at'
wp option delete 'a11yb_license_created_at_ts'
wp option delete 'a11yb_license_updated_at_ts'
wp option delete 'a11ybridge_voice_config'
wp option delete 'a11ybridge_client_secret'

# Delete Transients
wp transient delete 'a11ybridge_license_cache'

# Clear Cron Jobs
wp cron event delete 'a11ybridge_alttext_daily_scan'
wp cron event delete 'a11ybridge_alttext_generate_one'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
