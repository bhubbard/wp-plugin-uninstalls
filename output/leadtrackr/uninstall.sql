-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leadtrackr_gf_forms', 'leadtrackr_cf7_forms', 'leadtrackr_elementor_forms', 'leadtrackr_wpforms_forms', 'leadtrackr_fluent_forms_forms', 'leadtrackr_divi_process_contact_form', 'leadtrackr_project_id');

