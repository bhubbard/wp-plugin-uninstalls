-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgrade_metaboxes_prefix', 'wpgrade_shortcodes_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%author_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%author_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%author_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%author_function';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%author_function';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%author_function';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author_function';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%author_link';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%author_link';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%author_link';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%author_link';

