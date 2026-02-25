-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbebaic_custom_css', 'wbebaic_custom_js', 'wb_ebaic_review_transient', 'wb_ebaic_review_transient');
DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_main_reason_%';

