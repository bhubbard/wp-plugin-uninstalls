-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_zoom_version', 'dbem_location_types', 'dbem_edit_events_page', 'emp_gateway_customer_fields', 'em_check_dev_version', 'dbem_pro_dev_updates');

