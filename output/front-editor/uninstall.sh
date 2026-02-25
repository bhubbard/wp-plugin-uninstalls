#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfe_front_editor_wp_admin_menu'
wp option delete 'bfe_front_editor_edit_button_position'
wp option delete 'bfe_front_editor_edit_button_text'
wp option delete 'bfe_general_settings_login_register_group_options'
wp option delete 'bfe_is_front_editor_pro_version_exist'
wp option delete 'bfe_general_user_admin_settings_group_options'
wp option delete 'bfe_front_editor_google_map_api'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bfe_editor_js_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bfe_editor_js_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bfe_editor_js_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bfe_editor_js_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fe_post_updated_from_admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fe_post_updated_from_admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fe_post_updated_from_admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fe_post_updated_from_admin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formBuilderData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formBuilderData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formBuilderData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formBuilderData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fe_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fe_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fe_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fe_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BFE_the_post_edited_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BFE_the_post_edited_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BFE_the_post_edited_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BFE_the_post_edited_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fus_post_created_from_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fus_post_created_from_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fus_post_created_from_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fus_post_created_from_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fus_user_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fus_user_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fus_user_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fus_user_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add_to_cart_custom_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add_to_cart_custom_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add_to_cart_custom_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add_to_cart_custom_data'"
