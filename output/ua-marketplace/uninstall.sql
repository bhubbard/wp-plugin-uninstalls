-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'mrkv_uamrkpl_promua_shop_name', 'mrkv_uamrkpl_promua_company', 'mrkv_uamrkpl_promua_global_vendor', 'mrkv_uamrkpl_promua_custom_vendor', 'mrkv_uamrkpl_promua_vendor_by_attributes', 'mrkv_uamrkpl_rozetka_vendor_all_possibilities', 'mrkv_uamrkpl_promua_background_proc_xml_chk', 'mrkv_uamrkpl_promua_background_proc_xml_step', 'mrkv_uamrkpl_rozetka_shop_name', 'mrkv_uamrkpl_rozetka_company', 'mrkv_uamrkpl_rozetka_xml_tags_lang', 'mrkv_uamrkpl_rozetka_global_vendor', 'mrkv_uamrkpl_rozetka_custom_vendor', 'mrkv_uamrkpl_rozetka_vendor_by_attributes', 'mrkv_ua_marketplaces', 'mrkv_uamrkpl_collation_option', 'mrkv_uamrkpl_rozetka_xml_filename', 'mrkv_uamrkpl_promua_xml_filename', 'mrkv_uamrkpl_rozetka_xmlfile_dir', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mrkvuamp_rozetka_description', 'mrkvuamp_promua_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('mrkvuamp_rozetka_description', 'mrkvuamp_promua_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('mrkvuamp_rozetka_description', 'mrkvuamp_promua_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mrkvuamp_rozetka_description', 'mrkvuamp_promua_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';

