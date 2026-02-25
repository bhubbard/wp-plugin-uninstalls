#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'gsc_create_sheet_elementor_settings'
wp option delete 'elefgs_sheetId'
wp option delete 'elefgs_tabsId'
wp option delete 'gsc_elementor_settings'
wp option delete 'elefgs_info'
wp option delete 'elefgs_access_code'
wp option delete 'elefgs_verify'
wp option delete 'elefgs_token'
wp option delete 'blog_publicize'
wp option delete 'ele_gs_debug_log_file'
wp option delete 'elefgs_feeds'
wp option delete 'elefgs_access_manual_code'
wp option delete 'elefgs_token_manual'
wp option delete 'Elegsc_api_creds'
wp option delete 'is_new_client_secret_elefgscfree'
wp option delete 'elefgs_manual_setting'
wp option delete 'elefgs_client_id'
wp option delete 'elefgs_secret_id'
wp option delete 'gsc_elementor_email_account'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gscele_form_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gscele_form_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gscele_form_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gscele_form_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_elementor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_elementor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_elementor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_elementor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gscele_sheet_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gscele_sheet_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gscele_sheet_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gscele_sheet_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gscele_sheet_header_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gscele_sheet_header_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gscele_sheet_header_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gscele_sheet_header_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gscele_sort_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gscele_sort_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gscele_sort_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gscele_sort_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
