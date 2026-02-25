-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hoo_hreflang_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hoo_alternative_tags', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hoo_alternative_tags', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hoo_alternative_tags', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hoo_alternative_tags', '_wp_page_template');

