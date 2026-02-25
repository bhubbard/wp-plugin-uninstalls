-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('id_modules', 'is_id_pro', 'wiz-configure', 'idf_commerce_platform', 'id_purchase_default', 'rewrite_rules', 'md_receipt_settings', 'idc_global_currency', 'recently_activated', 'helix_settings', 'idhelix_waitlist_length', 'woocommerce_myaccount_page_id', 'woocommerce_view_order_page_id', 'woocommerce_edit_address_page_id', 'id_recaptcha_settings', 'idf_transfer_key', 'idf_wc_checkout_url', 'active_sitewide_plugins', 'idf_registered', 'idf_regsitered_post', 'id_account', 'idf_license_name', 'is_idc_licensed', 'is_id_basic', 'idf_license_type', 'license_expiry', 'license_item_id', 'license_post_id', 'idcf_updated', 'idf_license_entry_options', 'id_license_key', 'license_payment_id', 'idf_key', 'sidebars_widgets', 'md_dash_settings', 'idf_current_version', 'idf_key_transfer', 'idf_install_flags', 'id_modules', 'idf_transient_cache', 'update_plugins', 'idf_plugin_versions', 'idf_license_name', 'is_id_pro', 'is_idc_licensed', 'is_id_basic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'ign_project_id', 'idhelix_waitlist', 'enable_creator', 'ide_user_projects');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'ign_project_id', 'idhelix_waitlist', 'enable_creator', 'ide_user_projects');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'ign_project_id', 'idhelix_waitlist', 'enable_creator', 'ide_user_projects');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'ign_project_id', 'idhelix_waitlist', 'enable_creator', 'ide_user_projects');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

