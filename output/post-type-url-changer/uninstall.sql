-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_post_type_url_changer_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('um_custom_post_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('um_custom_post_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('um_custom_post_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('um_custom_post_url');

