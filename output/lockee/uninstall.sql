-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lockee_settings', 'lockee_settings_visited', 'lockee_slug_base', 'lockee_post_type_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lockee_type', 'lockee_options', 'lockee_content', 'lockee_test', 'lockee_open', 'lockee_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('lockee_type', 'lockee_options', 'lockee_content', 'lockee_test', 'lockee_open', 'lockee_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('lockee_type', 'lockee_options', 'lockee_content', 'lockee_test', 'lockee_open', 'lockee_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lockee_type', 'lockee_options', 'lockee_content', 'lockee_test', 'lockee_open', 'lockee_code');

