-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushed_api_key', 'pushed_app_key', 'pushed_app_secret', 'pushed_target_type', 'pushed_target_alias', 'pushed_sources');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pushed_message_content', 'pushed_api_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('pushed_message_content', 'pushed_api_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('pushed_message_content', 'pushed_api_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pushed_message_content', 'pushed_api_request');

