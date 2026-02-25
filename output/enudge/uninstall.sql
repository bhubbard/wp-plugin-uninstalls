-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enudge_api_call', 'enudge_error_log', 'enudge_licence_key_checked', 'enudge_licence_key_valid', 'enudge_licence_key', 'enudge_support_elementor_forms', 'enudge_support_contact_form_7', 'enudge_support_wpforms', 'enudge_support_gravity_forms', 'enudge_support_formidable_forms', 'enudge_support_forminator_forms', 'enudge_support_fluentforms_forms', 'disable_comments', 'enudge_support_wp_comment', 'enudge_support_woocommerce_review', 'enudge_support_registration', 'enudge_store_log', 'enudge_support_woocommerce_registration');

