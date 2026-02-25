-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asd_wpsorter_version', 'asd_wpsorter_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('asd_wpsorter_product_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('asd_wpsorter_product_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('asd_wpsorter_product_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('asd_wpsorter_product_order');

