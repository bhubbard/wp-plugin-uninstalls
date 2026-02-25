-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agrwc_enabled', 'agrwc_checkboxes_data', 'active_sitewide_plugins', 'agrwc_buttonclasses', 'agrwc_formclasses', 'agrwc_alertmsg', 'wc_price_based_country_version', '_oga_wppbc_countries_groups', 'woocommerce_version', 'agrwc_unistall');
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_agrwc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_agrwc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_agrwc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_agrwc_%';

