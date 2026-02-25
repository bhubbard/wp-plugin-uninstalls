-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apx_settings_tutorial_shown', 'apx_editor_tutorial_shown');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('apx_pinterest_image_id', 'apx_pin_count', 'apx_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('apx_pinterest_image_id', 'apx_pin_count', 'apx_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('apx_pinterest_image_id', 'apx_pin_count', 'apx_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('apx_pinterest_image_id', 'apx_pin_count', 'apx_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'apx_traffic_post_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'apx_traffic_post_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'apx_traffic_post_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'apx_traffic_post_id_%';

