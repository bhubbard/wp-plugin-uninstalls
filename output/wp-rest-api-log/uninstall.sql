-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-rest-api-log-db-notice-dismissed', 'wp-rest-api-log-plugin-activated');
DELETE FROM wp_options WHERE option_name LIKE '%-plugin-activated';
DELETE FROM wp_options WHERE option_name LIKE '%-plugin-version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_rest_api_log_migrated_id', '_request_body');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_rest_api_log_migrated_id', '_request_body');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_rest_api_log_migrated_id', '_request_body');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_rest_api_log_migrated_id', '_request_body');

