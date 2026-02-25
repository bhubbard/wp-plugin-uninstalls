-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('project_rate_calculator_layout_type', 'project_rate_calculator_layout_css', 'project_rate_searchform');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('calculator_form_category', 'calculator_form_properties', 'calculator_form_state', 'calculator_form_field_properties');
DELETE FROM wp_usermeta WHERE meta_key IN ('calculator_form_category', 'calculator_form_properties', 'calculator_form_state', 'calculator_form_field_properties');
DELETE FROM wp_termmeta WHERE meta_key IN ('calculator_form_category', 'calculator_form_properties', 'calculator_form_state', 'calculator_form_field_properties');
DELETE FROM wp_commentmeta WHERE meta_key IN ('calculator_form_category', 'calculator_form_properties', 'calculator_form_state', 'calculator_form_field_properties');

