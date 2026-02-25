-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'upgrade_store_options', 'upgrade_store_do_activation_redirect', 'upgrade-store_hide_admin_notice', 'upgrade_store_api_settings', 'upgrade_store_api_attachments', 'upgrade_store_api_woo_email', 'upgrade_store_api_quickview', 'upgrade_store_api_stocks_left', 'upgrade_store_api_banner', 'upgrade_store_api_gallery', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_admin_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_upgrade_store_product_tab_data', '_upgrade_store_product_countdown_data', '_upgrade_store_gallery_type', '_stock', '_upgrade_store_product_attachment_name', '_upgrade_store_product_attachment_icon', '_upgrade_store_product_attachment_description', '_upgrade_store_product_attachment_type', '_upgrade_store_product_attachment_internalFile', '_upgrade_store_product_attachment_externalFile', '_upgrade_store_product_attachment_newWindow', '_product_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_upgrade_store_product_tab_data', '_upgrade_store_product_countdown_data', '_upgrade_store_gallery_type', '_stock', '_upgrade_store_product_attachment_name', '_upgrade_store_product_attachment_icon', '_upgrade_store_product_attachment_description', '_upgrade_store_product_attachment_type', '_upgrade_store_product_attachment_internalFile', '_upgrade_store_product_attachment_externalFile', '_upgrade_store_product_attachment_newWindow', '_product_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_upgrade_store_product_tab_data', '_upgrade_store_product_countdown_data', '_upgrade_store_gallery_type', '_stock', '_upgrade_store_product_attachment_name', '_upgrade_store_product_attachment_icon', '_upgrade_store_product_attachment_description', '_upgrade_store_product_attachment_type', '_upgrade_store_product_attachment_internalFile', '_upgrade_store_product_attachment_externalFile', '_upgrade_store_product_attachment_newWindow', '_product_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_upgrade_store_product_tab_data', '_upgrade_store_product_countdown_data', '_upgrade_store_gallery_type', '_stock', '_upgrade_store_product_attachment_name', '_upgrade_store_product_attachment_icon', '_upgrade_store_product_attachment_description', '_upgrade_store_product_attachment_type', '_upgrade_store_product_attachment_internalFile', '_upgrade_store_product_attachment_externalFile', '_upgrade_store_product_attachment_newWindow', '_product_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%check';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%check';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%check';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%check';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%icon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%icon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%icon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%icon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%internalFile';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%internalFile';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%internalFile';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%internalFile';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%externalFile';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%externalFile';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%externalFile';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%externalFile';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%newWindow';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%newWindow';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%newWindow';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%newWindow';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%total_sold_count_text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%total_sold_count_text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%total_sold_count_text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%total_sold_count_text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%subtext';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%subtext';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%subtext';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%subtext';

