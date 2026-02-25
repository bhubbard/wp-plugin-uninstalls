-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailkit_installed', 'emailkit_version', 'elements_kit_onboard_status', 'met_form_onboard_status', 'shopengine_onboard_status', 'emailkit_option__settings', 'woocommerce_currency_pos', 'woocommerce_cancelled_order_settings', 'woocommerce_failed_order_settings', 'woocommerce_new_order_settings');
DELETE FROM wp_options WHERE option_name LIKE 'shopengine-metform_get_free_templates_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emailkit_template_content_object', 'emailkit_template_content_html', 'emailkit_template_type', 'emailkit_template_status', 'emailkit_email_subject', 'emailkit_email_preheader', 'emailkit_template_initial_content_object', 'emailkit_template_id', 'emailkit_email_type', 'emailkit_form_id', 'emailkit_template_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('emailkit_template_content_object', 'emailkit_template_content_html', 'emailkit_template_type', 'emailkit_template_status', 'emailkit_email_subject', 'emailkit_email_preheader', 'emailkit_template_initial_content_object', 'emailkit_template_id', 'emailkit_email_type', 'emailkit_form_id', 'emailkit_template_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('emailkit_template_content_object', 'emailkit_template_content_html', 'emailkit_template_type', 'emailkit_template_status', 'emailkit_email_subject', 'emailkit_email_preheader', 'emailkit_template_initial_content_object', 'emailkit_template_id', 'emailkit_email_type', 'emailkit_form_id', 'emailkit_template_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emailkit_template_content_object', 'emailkit_template_content_html', 'emailkit_template_type', 'emailkit_template_status', 'emailkit_email_subject', 'emailkit_email_preheader', 'emailkit_template_initial_content_object', 'emailkit_template_id', 'emailkit_email_type', 'emailkit_form_id', 'emailkit_template_title');

