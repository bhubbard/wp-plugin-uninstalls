#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flash_toolkit_meta_box_errors'
wp option delete 'flash_toolkit_admin_notices'
wp option delete 'flash_pro_notice_start_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'flash_toolkit_admin_notice_%'"
wp option delete 'flash_toolkit_db_version'
wp option delete 'flash_toolkit_permalinks'
wp option delete 'flash_toolkit_admin_footer_text_rated'
wp option delete 'flash_toolkit_version'
wp option delete 'flash_toolkit_custom_sidebars'

# Delete Transients
wp transient delete 'ft_installing'
wp transient delete '_flash_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flash_pro_notice_temporary_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flash_pro_notice_temporary_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flash_pro_notice_temporary_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flash_pro_notice_temporary_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flash_pro_notice_permanent_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flash_pro_notice_permanent_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flash_pro_notice_permanent_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flash_pro_notice_permanent_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pageheader_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pageheader_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pageheader_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pageheader_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pageheader_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pageheader_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pageheader_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pageheader_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_example_cb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
