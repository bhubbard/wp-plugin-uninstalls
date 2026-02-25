-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reality_shop_delete_data', 'reality_shop_open_in_modal', 'reality_shop_remove_comments_and_empty_lines', 'reality_shop_lazy_load', 'reality_shop_files');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_reality_shop_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_reality_shop_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_reality_shop_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_reality_shop_shortcode');

