-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rui_settings', 'rui_logs_count', 'rui_logs_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rui_submit_on_publish', '_rui_submit_on_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rui_submit_on_publish', '_rui_submit_on_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rui_submit_on_publish', '_rui_submit_on_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rui_submit_on_publish', '_rui_submit_on_update');

