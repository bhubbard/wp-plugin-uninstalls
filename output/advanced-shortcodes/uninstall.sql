-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ascodes_shortcode_title', 'ascodes_shortcode_sub_title', 'ascodes_shortcode_content', 'ascodes_version', 'ascodes_flash_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ascodes_shortcode_title', 'ascodes_shortcode_sub_title', 'ascodes_shortcode_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('ascodes_shortcode_title', 'ascodes_shortcode_sub_title', 'ascodes_shortcode_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('ascodes_shortcode_title', 'ascodes_shortcode_sub_title', 'ascodes_shortcode_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ascodes_shortcode_title', 'ascodes_shortcode_sub_title', 'ascodes_shortcode_content');

