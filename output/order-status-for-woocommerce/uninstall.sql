-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfwp_wc_order_status_admin_order_actions_processing_override', 'wfwp_wc_order_status_admin_order_actions_processing_has_status', 'wfwp_wc_order_status_admin_order_actions_complete_override', 'wfwp_wc_order_status_admin_order_actions_complete_has_status', 'wfwp_wc_order_status_sorting_custom', 'wfwp_wc_order_status_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

