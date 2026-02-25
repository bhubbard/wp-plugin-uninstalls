-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp3cxw');
DELETE FROM wp_options WHERE option_name LIKE 'tcxwm_webinar_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_config_errors', '_locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('_config_errors', '_locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('_config_errors', '_locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_config_errors', '_locale');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

