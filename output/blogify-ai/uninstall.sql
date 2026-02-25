-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogify_client_secret', 'blogify_display_admin_menu_pages', 'blogify_user_details');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blogify_meta_description', 'blogify_meta_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('blogify_meta_description', 'blogify_meta_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('blogify_meta_description', 'blogify_meta_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blogify_meta_description', 'blogify_meta_tags');

