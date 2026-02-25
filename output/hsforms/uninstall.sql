-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hsforms_api_option_name', 'hsforms_api_token', 'hsforms_options_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ratecode', 'code', 'tp_start', 'tp_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('ratecode', 'code', 'tp_start', 'tp_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('ratecode', 'code', 'tp_start', 'tp_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ratecode', 'code', 'tp_start', 'tp_end');

