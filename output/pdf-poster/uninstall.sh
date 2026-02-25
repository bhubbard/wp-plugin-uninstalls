#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpdf_option'
wp option delete 'pdfp_gutenberg_enable'
wp option delete 'pdfp_settings'
wp option delete 'pdfp_css'
wp option delete 'pdfp_import'
wp option delete 'csf_demo_mode'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isGutenberg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_print'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_print'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_print'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_print'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_pgname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_pgname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_pgname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_pgname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpdfe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpdfe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpdfe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpdfe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_enable_default_viewer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_enable_default_viewer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_enable_default_viewer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_enable_default_viewer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_right_click'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_right_click'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_right_click'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_right_click'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_side'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_side'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_side'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_side'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_disable_alert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_disable_alert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_disable_alert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_disable_alert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdfp_onei_pp_jump_to_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdfp_onei_pp_jump_to_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdfp_onei_pp_jump_to_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdfp_onei_pp_jump_to_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
