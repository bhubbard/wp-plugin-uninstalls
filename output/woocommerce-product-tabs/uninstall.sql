-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_product_tabs_made_fields_translatable', 'wpt_options', 'woocommerce-product-tabs-setup-wizard_completed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpt_conditions_category', '_wpt_display_tab_globally', '_wpt_option_use_default_for_all');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpt_conditions_category', '_wpt_display_tab_globally', '_wpt_option_use_default_for_all');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpt_conditions_category', '_wpt_display_tab_globally', '_wpt_option_use_default_for_all');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpt_conditions_category', '_wpt_display_tab_globally', '_wpt_option_use_default_for_all');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_override_%';

