-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwdsp_general_settings', 'jwdsp_accepted_cpt', 'jwdsp_general_settings[post_types]', 'jwdsp_fontawesome', 'JWDSP_version', 'JWDSP_PLUGIN_PATH', 'JWDSP_PLUGIN_URL', 'JWDSP Plugin Path', 'JWDSP Plugin URL', 'jwdsp_username', 'jwdsp_repository', 'jwdsp_access_token', 'JWDSP_Accepted_Post_Types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jwdsp_thumbnail');
DELETE FROM wp_usermeta WHERE meta_key IN ('jwdsp_thumbnail');
DELETE FROM wp_termmeta WHERE meta_key IN ('jwdsp_thumbnail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jwdsp_thumbnail');

