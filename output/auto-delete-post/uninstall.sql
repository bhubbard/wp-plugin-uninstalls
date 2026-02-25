-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adp_redirect_option', 'adp_deleted_post_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('auto_delete_post_time_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('auto_delete_post_time_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('auto_delete_post_time_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('auto_delete_post_time_key');

