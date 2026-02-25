-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_display_shop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_controls_usage', '_elementor_data', '_tutor_lms_elementor_template_id', '_elementor_css', '_elementor_element_cache', '_is_preview', '_tutor_is_public_course');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_controls_usage', '_elementor_data', '_tutor_lms_elementor_template_id', '_elementor_css', '_elementor_element_cache', '_is_preview', '_tutor_is_public_course');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_controls_usage', '_elementor_data', '_tutor_lms_elementor_template_id', '_elementor_css', '_elementor_element_cache', '_is_preview', '_tutor_is_public_course');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_controls_usage', '_elementor_data', '_tutor_lms_elementor_template_id', '_elementor_css', '_elementor_element_cache', '_is_preview', '_tutor_is_public_course');

