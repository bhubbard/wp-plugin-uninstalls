-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enquiry_woo_tab_priority_field', 'enquiry_woo_form_selection_field');

