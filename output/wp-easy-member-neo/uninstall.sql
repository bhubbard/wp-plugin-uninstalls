-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_wpemp_ver', 'wpemp_show_powered', 'wp_wpemp_fopen', 'wpemp_url', 'wpemp_name', 'wpemp_powered_link', 'wpemp_signup_link', 'wpemp_show_post', 'wpemp_show_page', 'wpemp_member_levels', 'wpemp_cat_options');
DELETE FROM wp_options WHERE option_name LIKE 'wpemp_cat_levels_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpemp_show_%';
DELETE FROM wp_options WHERE option_name LIKE 'cat_levels_key_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpemp_levels', '_wpemp_dropdown', '_wpemp_excerpt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpemp_levels', '_wpemp_dropdown', '_wpemp_excerpt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpemp_levels', '_wpemp_dropdown', '_wpemp_excerpt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpemp_levels', '_wpemp_dropdown', '_wpemp_excerpt');

