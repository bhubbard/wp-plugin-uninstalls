-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'somdn_gen_settings', 'somdn_single_settings', 'somdn_multi_settings', 'somdn_docviewer_settings', 'somdn_pro_track_settings', 'somdn_woo_quickview_settings', 'somdn_owned_settings', 'somdn_debug_settings', 'divi_engine_options', 'divi_fb_license', 'wp_enhanced_licenses', 'somdn_pro_license_key', 'somdn_pro_license_status', 'wpe_incomplete_achievements', 'wpe_complete_achievements', 'somdn_license_migrated_to_wpe', 'somdn_stats_export_settings', 'somdn_memberships_settings', 'woocommerce_file_download_method');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('somdn_dlcount', 'somdn_included', 'somdn_product_id', 'somdn_user_email', 'somdn_download_files', 'somdn_membership_include_free_download', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('somdn_dlcount', 'somdn_included', 'somdn_product_id', 'somdn_user_email', 'somdn_download_files', 'somdn_membership_include_free_download', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('somdn_dlcount', 'somdn_included', 'somdn_product_id', 'somdn_user_email', 'somdn_download_files', 'somdn_membership_include_free_download', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('somdn_dlcount', 'somdn_included', 'somdn_product_id', 'somdn_user_email', 'somdn_download_files', 'somdn_membership_include_free_download', '_regular_price', '_sale_price');

