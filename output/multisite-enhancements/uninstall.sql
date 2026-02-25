-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multisite_blog_list', 'multisite_blog_list_details');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_logged_in');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_logged_in');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_logged_in');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_logged_in');

