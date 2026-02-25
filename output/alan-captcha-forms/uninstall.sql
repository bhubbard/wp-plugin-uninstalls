-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alanforms_contact_form_7_integration', 'alanforms_elementor_pro_integration', 'alanforms_site_key_field', 'alanforms_api_key_field', 'alanforms_language', 'alanforms_language_attribute_unverified', 'alanforms_language_attribute_verified', 'alanforms_language_attribute_retry', 'alanforms_language_attribute_working', 'alanforms_language_attribute_start');

