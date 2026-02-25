-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_disabled_elements', 'elementskit_options', '__validate_oppai__', 'elementskit-lite__plugin_activated', 'elementor_css_print_method', 'active_sitewide_plugins', 'elementskit-lite_install_date', 'elements_kit_onboard_status', 'elementskit_lite_activation_stamp', 'gutenkit_do_activation_redirect', 'ekit_element_manager_compatibity');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE 'elementskit-lite-edit_with_emailkit_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elementskit_custom_widget_data', '_wp_attachment_image_alt', '_wp_page_template', 'elementskit_template_type', 'elementskit_template_condition_a', 'elementskit_template_condition_singular', 'elementskit_template_condition_singular_id', 'elementskit_template_activation', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('elementskit_custom_widget_data', '_wp_attachment_image_alt', '_wp_page_template', 'elementskit_template_type', 'elementskit_template_condition_a', 'elementskit_template_condition_singular', 'elementskit_template_condition_singular_id', 'elementskit_template_activation', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('elementskit_custom_widget_data', '_wp_attachment_image_alt', '_wp_page_template', 'elementskit_template_type', 'elementskit_template_condition_a', 'elementskit_template_condition_singular', 'elementskit_template_condition_singular_id', 'elementskit_template_activation', '_elementor_edit_mode', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elementskit_custom_widget_data', '_wp_attachment_image_alt', '_wp_page_template', 'elementskit_template_type', 'elementskit_template_condition_a', 'elementskit_template_condition_singular', 'elementskit_template_condition_singular_id', 'elementskit_template_activation', '_elementor_edit_mode', '_elementor_data');

