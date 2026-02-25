-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'wpai_wpae_scheduling_license_site_limit', 'wpae_modal_review_dismissed', 'wpae_modal_review_dismissed_time', 'wpae_modal_review_dismissed_modals', 'wpae_modal_review_dismissed_times', 'active_sitewide_plugins', 'wp_all_export_db_version', 'wp_all_export_free_db_version', 'wp_all_export_free_addons_not_included', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_export_queue_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_export_acf_flexible_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpae_dismiss_warnings_%';
DELETE FROM wp_options WHERE option_name LIKE '%_Options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

