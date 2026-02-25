-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_ei_button_hyperlink_margin_message_dontshow', 'wc_ei_hide_inquiry_button_message_dontshow', 'wc_ei_hide_addtocart_message_dontshow', 'wc_ei_hide_price_message_dontshow', 'wc_ei_manual_quote_message_dontshow', 'wc_ei_use_woocommerce_css_message_dontshow', 'a3rev_wc_email_inquiry_version', 'a3rev_wc_email_inquiry_ultimate_version', 'a3rev_wc_email_inquiry_just_installed', 'woocommerce_db_version', 'wc_email_inquiry_customize_email_button', 'wc_email_inquiry_global_settings', 'wc_email_inquiry_cart_options_style_version', 'wc_email_inquiry_contact_success', 'wc_email_inquiry_rules_roles_settings', 'wc_email_inquiry_email_options', 'wc_email_inquiry_3rd_contactforms_settings', 'wc_email_inquiry_customize_email_popup', 'wc_email_inquiry_contact_form_settings', 'wc_email_inquiry_contact_form_information_text', 'wc_email_inquiry_contact_form_condition_text', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';

