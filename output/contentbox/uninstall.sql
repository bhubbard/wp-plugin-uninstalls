-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentbox_api_token', 'contentbox_api_id', 'contentbox_cat', 'contentbox_post_status', 'contentbox_shedule_type', 'contentbox_is_add_img');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('contentbox_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('contentbox_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('contentbox_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('contentbox_id');

