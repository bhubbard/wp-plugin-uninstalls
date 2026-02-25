-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'avatar_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'avatar_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'avatar_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'avatar_id', 'first_name', 'last_name');

