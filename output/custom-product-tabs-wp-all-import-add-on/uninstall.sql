-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yikes_woo_reusable_products_tabs', 'yikes_woo_reusable_products_tabs_applied');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yikes_woo_products_tabs');
DELETE FROM wp_usermeta WHERE meta_key IN ('yikes_woo_products_tabs');
DELETE FROM wp_termmeta WHERE meta_key IN ('yikes_woo_products_tabs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yikes_woo_products_tabs');

