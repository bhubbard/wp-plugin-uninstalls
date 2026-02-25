-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_jssor_slider_instance_id', 'wp_jssor_slider_db_version', 'wjssl-update-check-short', 'wjssl-latest-version', 'wjssl-stable-version', 'wjssl-beta-version', 'wjssl-update-check', 'wjssl_acckey', 'wjssl_purchcode', 'wjssl_actcode', 'wjssl_activate_request_time');

