-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brevwoo_brevo_api_key', 'brevwoo_default_lists', 'brevwoo_order_status', 'brevwoo_debug_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brevwoo_product_lists');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brevwoo_product_lists');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brevwoo_product_lists');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brevwoo_product_lists');

