#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tryloom_try_on_method'
wp option delete 'tryloom_enabled'
wp option delete 'tryloom_platform_key'
wp option delete 'tryloom_allowed_categories'
wp option delete 'tryloom_button_placement'
wp option delete 'tryloom_theme_color'
wp option delete 'tryloom_primary_color'
wp option delete 'tryloom_retry_button'
wp option delete 'tryloom_custom_popup_css'
wp option delete 'tryloom_custom_button_css'
wp option delete 'tryloom_custom_account_css'
wp option delete 'tryloom_save_photos'
wp option delete 'tryloom_generation_limit'
wp option delete 'tryloom_time_period'
wp option delete 'tryloom_delete_photos_days'
wp option delete 'tryloom_allowed_user_roles'
wp option delete 'tryloom_enable_history'
wp option delete 'tryloom_enable_logging'
wp option delete 'tryloom_admin_user_roles'
wp option delete 'tryloom_show_popup_errors'
wp option delete 'tryloom_remove_data_on_delete'
wp option delete 'tryloom_subscription_ended'
wp option delete 'tryloom_free_trial_error'
wp option delete 'tryloom_usage_used'
wp option delete 'tryloom_usage_limit'
wp option delete 'tryloom_free_platform_key'
wp option delete 'tryloom_instance_id'
wp option delete 'tryloom_status_check_count'
wp option delete 'tryloom_brand_watermark'
wp option delete 'tryloom_version'
wp option delete 'tryloom_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tryloom_%'"
wp option delete 'tryloom_legacy_migrated'

# Delete Transients
wp transient delete 'tryloom_dashboard_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tryloom_variations_%' OR option_name LIKE '_site_transient_tryloom_variations_%'"
wp transient delete 'wc_try_on_verification_lock'

# Clear Cron Jobs
wp cron event delete 'tryloom_check_account_status'
wp cron event delete 'tryloom_cleanup_inactive_users'
wp cron event delete 'tryloom_delete_generated_image'
wp cron event delete 'tryloom_cleanup_cron'
wp cron event delete 'wc_try_on_cleanup_inactive_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tryloom_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tryloom_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tryloom_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tryloom_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tryloom_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tryloom_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tryloom_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tryloom_last_login'"
