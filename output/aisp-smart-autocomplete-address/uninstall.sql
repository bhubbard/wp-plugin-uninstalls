-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisp_autocomplete_here_api_key', 'aisp_autocomplete_here_limit', 'aisp_fluent_forms_enable', 'aisp_fluent_forms_container_class', 'aisp_sureforms_enable', 'aisp_sureforms_container_class', 'aisp_cf7_enable', 'aisp_cf7_container_class', 'aisp_wpforms_enable', 'aisp_wpforms_container_class', 'aisp_custom_field_enable', 'aisp_custom_field_container_class', 'aisp_wc_enable_checkout', 'aisp_wc_enable_edit_address', 'aisp_wc_enable_admin_profile');

