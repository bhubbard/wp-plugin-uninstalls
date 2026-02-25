-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('non_pagebuilder_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lego_layout', 'is_lego_enabled', '_wp_page_template', 'wpsb_blank_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('lego_layout', 'is_lego_enabled', '_wp_page_template', 'wpsb_blank_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('lego_layout', 'is_lego_enabled', '_wp_page_template', 'wpsb_blank_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lego_layout', 'is_lego_enabled', '_wp_page_template', 'wpsb_blank_template');

