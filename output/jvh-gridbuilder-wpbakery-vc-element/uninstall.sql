-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jvh_all_terms', 'jvh_all_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpb_shortcodes_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpb_shortcodes_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpb_shortcodes_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpb_shortcodes_custom_css');

