#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_codes_ajax'
wp option delete '_codes_sound'
wp option delete '_codes_shortcut'
wp option delete '_codes_emmet'
wp option delete '_codes_initial_editor'
wp option delete '_codes_desktop'
wp option delete '_codes_tablet_l'
wp option delete '_codes_tablet_p'
wp option delete '_codes_phone_l'
wp option delete '_codes_phone_p'
wp option delete '_codes_retina'
wp option delete '_codes_output_order'
wp option delete '_codes_admin_bar'
wp option delete '_codes_store'
wp option delete '_codes_version'
wp option delete '_codes_ai_provider'
wp option delete '_codes_openai_key'
wp option delete '_codes_google_key'
wp option delete '_codes_google_models'
wp option delete '_codes_openai_models'
wp option delete 'codes_ai_notice_dismissed'
wp option delete '_codes_location'
wp option delete 'cstm_cds_style_mode'
wp option delete 'cstm_cds_permission_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%css_save_count'"
wp option delete 'cstm_cds_js_head_save_count'
wp option delete 'cstm_cds_admin_notes'
wp option delete 'cstm_cds_css_save_count'
wp option delete 'cstm_cds_admin_css_save_count'
wp option delete 'cstm_cds_js_bottom_save_count'
wp option delete 'cstm_cds_admin_js_head_save_count'
wp option delete 'cstm_cds_admin_js_bottom_save_count'
wp option delete 'cstm_cds_tablet_l'
wp option delete 'cstm_cds_tablet_p'
wp option delete 'cstm_cds_phone_l'
wp option delete 'cstm_cds_phone_p'
wp option delete 'cstm_cds_store_files'
wp option delete 'cstm_cds_editor_theme'
wp option delete 'cstm_cds_admin_roles'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_adminroles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_adminroles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_adminroles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_adminroles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_show_breakpoints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_show_breakpoints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_show_breakpoints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_show_breakpoints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_savecount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_savecount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_savecount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_savecount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_fontsize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_fontsize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_fontsize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_fontsize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codes_indent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codes_indent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codes_indent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codes_indent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
