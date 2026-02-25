-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteimprove_prepublish_allowed', 'siteimprove_prepublish_enabled', 'siteimprove_token', 'siteimprove_overlayjs_file', 'siteimprove_disable_new_version', 'siteimprove_api_key', 'siteimprove_public_url', 'siteimprove_ignore_path_segments', 'siteimprove_api_username', 'siteimprove_dev_mode');
DELETE FROM wp_options WHERE option_name LIKE 'siteimprove_url_%';

