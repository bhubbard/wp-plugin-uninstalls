-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordclever_current_user', 'wordclever_used_request', 'wordclever_current_plan', 'wordclever_request_count', 'wordclever_license_key', 'wordclever_license_status');
DELETE FROM wp_options WHERE option_name LIKE 'wordclever_request_count%';
DELETE FROM wp_options WHERE option_name LIKE 'wordclever_used_request%';

