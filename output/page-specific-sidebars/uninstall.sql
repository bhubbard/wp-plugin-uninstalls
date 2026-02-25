-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_sidebar_home_id', 'page_sidebar_widget_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_custom', 'add2sidebar', 'prepend_to_sidebar', 'use_sidebar_group');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_custom', 'add2sidebar', 'prepend_to_sidebar', 'use_sidebar_group');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_custom', 'add2sidebar', 'prepend_to_sidebar', 'use_sidebar_group');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_custom', 'add2sidebar', 'prepend_to_sidebar', 'use_sidebar_group');

