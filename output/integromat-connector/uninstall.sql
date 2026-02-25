-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iwc-logging-enabled', 'iwc_api_permissions_enabled', 'iwc_strict_file_validation', 'iwc_allowed_file_extensions', 'iwc_log_encryption_key', 'iwc_max_payload_size', 'iwc_rate_limit_enabled', 'iwc_rate_limit_requests', 'iwc_payload_limit_enabled', 'iwc_sanitize_post_content', 'iwc_plugin_version', 'iwc_log_security_events', 'integromat_api_options_taxonomy', 'integromat_api_options_comment', 'integromat_api_options_post', 'integromat_api_options_term', 'integromat_api_options_user');
DELETE FROM wp_options WHERE option_name LIKE 'iwc_permission_%';
DELETE FROM wp_options WHERE option_name LIKE 'integromat_api_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

