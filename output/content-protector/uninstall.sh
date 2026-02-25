#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'passster_secure_key'
wp option delete 'passster'
wp option delete 'passster_general_settings'
wp option delete 'passster_advanced_settings'
wp option delete 'passster_global_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_activate_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_activate_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_activate_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_activate_protection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_protection_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_protection_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_protection_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_protection_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_area_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_area_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_area_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_area_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_password_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_password_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_password_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_password_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_password_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_password_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_password_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_password_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_passwords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_activate_user_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_activate_user_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_activate_user_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_activate_user_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_user_restriction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_user_restriction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_user_restriction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_user_restriction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_user_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_user_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_user_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_user_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_headline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_instruction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_instruction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_instruction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_instruction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_protect_child_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_protect_child_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_protect_child_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_protect_child_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_activate_overwrite_defaults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_activate_overwrite_defaults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_activate_overwrite_defaults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_activate_overwrite_defaults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passster_activate_misc_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passster_activate_misc_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passster_activate_misc_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passster_activate_misc_settings'"
