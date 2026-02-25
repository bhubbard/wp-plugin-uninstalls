-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wrpl-assign-method', 'wrpl-hide_price', 'wrpl-default_list', 'wrpl_plugin_version', 'wrpl_plugin_license', 'wrpl-format-price-method', 'wrpl-custom_msg_no_login_user');
DELETE FROM wp_options WHERE option_name LIKE 'wrpl-%';
DELETE FROM wp_options WHERE option_name LIKE 'wrpl_role-%';
DELETE FROM wp_options WHERE option_name LIKE 'wrpl_cat_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price');

