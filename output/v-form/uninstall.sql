-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vpsuform_secret_key', 'vform_api_key', 'vform_plugin_version', 'vpsuform_review_count', 'vpsuform_review_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vform_selected_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vform_selected_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vform_selected_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vform_selected_id');

