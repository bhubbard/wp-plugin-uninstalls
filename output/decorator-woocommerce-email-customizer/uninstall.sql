-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_decorator_current_version', 'rp_decorator', 'wt_decorator_custom_styles', 'wt_decorator_custom_styles_in_draft', 'wt_ema_from_app', 'wbte_decorator_activation_redirect', 'sf_connector_data', 'woocommerce_downloads_grant_access_after_payment', 'wt_decorator_old_custom_styles', 'wt_decorator_default_template_value', 'wt_decorator_custom_styles_scheduled', 'wt_decorator_last_selected_template', 'woocommerce_email_background_color', 'wt_test_mail_recipients', 'social_links_enable', 'social_links_icon_color', 'footer_social_repeater', 'woocommerce_email_base_color', 'woocommerce_email_footer_text', 'wt_ema_first_time_connect', 'rp_decorator_customer_new_account_btn_switch', 'woocommerce_registration_generate_password', 'rp_decorator_customer_reset_password_btn_switch', 'footer_social_enable', 'woocommerce_email_header_image', 'woocommerce_currency_pos', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%_image_link_btn_switch';
DELETE FROM wp_options WHERE option_name LIKE '%_body_text_enable_switch';
DELETE FROM wp_options WHERE option_name LIKE '%_body_full';
DELETE FROM wp_options WHERE option_name LIKE '%_body_partial';
DELETE FROM wp_options WHERE option_name LIKE '%_body';
DELETE FROM wp_options WHERE option_name LIKE '%_btn_switch';
DELETE FROM wp_options WHERE option_name LIKE '%_body_paid';
DELETE FROM wp_options WHERE option_name LIKE '%_body_failed';
DELETE FROM wp_options WHERE option_name LIKE '%_billing_address_subtitle';
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_address_subtitle';
DELETE FROM wp_options WHERE option_name LIKE '%_subtitle';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'formatted_billing_full_name', 'first_name', 'last_name');

