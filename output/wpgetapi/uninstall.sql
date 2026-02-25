-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgetapi_setup', 'wpgetapi_pro_license_status', 'wpgetapi_dismiss_dash_notice_until', 'updraft_task_manager_dbversion');
DELETE FROM wp_options WHERE option_name LIKE 'wpgetapi_%';
DELETE FROM wp_options WHERE option_name LIKE '%_last_api_call_status';
DELETE FROM wp_options WHERE option_name LIKE 'wpgetapi_chain_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

