-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weglot_version', 'weglot_old_permalink_structure', 'woocommerce_myaccount_lost_password_endpoint', 'weglot_instawp', 'weglot_php_version_notice', 'weglot_cache_cdn', 'weglot_slugs_cache');
DELETE FROM wp_options WHERE option_name LIKE 'weglot_idem_%';
DELETE FROM wp_options WHERE option_name LIKE 'weglot_sig_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', 'weglot_language');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', 'weglot_language');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', 'weglot_language');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', 'weglot_language');

