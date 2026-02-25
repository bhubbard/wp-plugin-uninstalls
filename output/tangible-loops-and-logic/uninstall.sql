-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwt_auth_rest_api_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_queue_state';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('style_compiled', 'location', 'theme_position', '_wp_attachment_image_alt', 'assets', 'atomic_css', 'script', 'style', 'universal_id', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('style_compiled', 'location', 'theme_position', '_wp_attachment_image_alt', 'assets', 'atomic_css', 'script', 'style', 'universal_id', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('style_compiled', 'location', 'theme_position', '_wp_attachment_image_alt', 'assets', 'atomic_css', 'script', 'style', 'universal_id', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('style_compiled', 'location', 'theme_position', '_wp_attachment_image_alt', 'assets', 'atomic_css', 'script', 'style', 'universal_id', '_edit_last');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tags';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tags';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tags';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tags';

