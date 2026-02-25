-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webcom_operator_status_custom_css', 'webcom_operator_status_api_token', 'webcom_operator_status_hide_no_alias', 'webcom_operator_status_online_image', 'webcom_operator_status_pause_image', 'webcom_operator_status_calling_image', 'webcom_operator_status_offline_image', 'webcom_operator_status_enable_whitelist', 'webcom_operator_status_whitelist', 'webcom_operator_status_with_login', 'webcom_operator_status_with_logout', 'webcom_operator_status_with_unreachable', 'webcom_operator_status_group_name', 'webcom_operator_status_operator_sort', 'webcom_operator_status_priority', 'webcom_operator_status_with_name', 'webcom_operator_status_with_status');

