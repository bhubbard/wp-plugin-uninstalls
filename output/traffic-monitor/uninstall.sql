-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfcm_plugin_version', 'tfcm_old_log_export_notice', 'tfcm_all_bots');
DELETE FROM wp_options WHERE option_name LIKE 'tfcm_quarantine_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tfcm_elements_per_page', 'managetoplevel_page_traffic-monitorcolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('tfcm_elements_per_page', 'managetoplevel_page_traffic-monitorcolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('tfcm_elements_per_page', 'managetoplevel_page_traffic-monitorcolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tfcm_elements_per_page', 'managetoplevel_page_traffic-monitorcolumnshidden');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%columnshidden';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%columnshidden';

