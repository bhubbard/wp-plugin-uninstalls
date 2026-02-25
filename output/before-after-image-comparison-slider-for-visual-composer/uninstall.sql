-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbvcbaic_custom_css', 'wbvcbaic_custom_js', 'wb_vc_baic_review_transient');
DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_main_reason_%';

