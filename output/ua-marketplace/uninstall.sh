#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'mrkv_uamrkpl_promua_shop_name'
wp option delete 'mrkv_uamrkpl_promua_company'
wp option delete 'mrkv_uamrkpl_promua_global_vendor'
wp option delete 'mrkv_uamrkpl_promua_custom_vendor'
wp option delete 'mrkv_uamrkpl_promua_vendor_by_attributes'
wp option delete 'mrkv_uamrkpl_rozetka_vendor_all_possibilities'
wp option delete 'mrkv_uamrkpl_promua_background_proc_xml_chk'
wp option delete 'mrkv_uamrkpl_promua_background_proc_xml_step'
wp option delete 'mrkv_uamrkpl_rozetka_shop_name'
wp option delete 'mrkv_uamrkpl_rozetka_company'
wp option delete 'mrkv_uamrkpl_rozetka_xml_tags_lang'
wp option delete 'mrkv_uamrkpl_rozetka_global_vendor'
wp option delete 'mrkv_uamrkpl_rozetka_custom_vendor'
wp option delete 'mrkv_uamrkpl_rozetka_vendor_by_attributes'
wp option delete 'mrkv_ua_marketplaces'
wp option delete 'mrkv_uamrkpl_collation_option'
wp option delete 'mrkv_uamrkpl_rozetka_xml_filename'
wp option delete 'mrkv_uamrkpl_promua_xml_filename'
wp option delete 'mrkv_uamrkpl_rozetka_xmlfile_dir'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'mrkvuamp_update_xml_hook'
wp cron event delete 'mrkvuamp_update_xml_hook_promua'
wp cron event delete 'mrkvuamp_partial_update_xml_hook_promua'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkvuamp_rozetka_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkvuamp_rozetka_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkvuamp_rozetka_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkvuamp_rozetka_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrkvuamp_promua_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrkvuamp_promua_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrkvuamp_promua_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrkvuamp_promua_title'"
