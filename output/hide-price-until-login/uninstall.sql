-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_hpul_captcha_option', 'ced_hp_captch_site_key', 'ced_hpul_enable_hide_price', 'ced_hpr_role', 'ced_hp_matched_password_text', 'ced_hp_empty_password_text', 'ced_hp_password_for_price', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'ced_hp_order_email_price_guest', 'ced_hp_order_email_price_logged_in', 'ced_hpul_extra_pages_options', 'ced_hpul_register_form', 'ced_hpul_summary_text', 'ced_hp_captch_secret_key', 'ced_hp_order_now_text', 'ced_hp_password_field_placeholder', 'ced_hp_submit_text', 'ced_hp_wrong_password_text');
DELETE FROM wp_options WHERE option_name LIKE '%_empty_user_name_text';
DELETE FROM wp_options WHERE option_name LIKE '%_empty_email_text';
DELETE FROM wp_options WHERE option_name LIKE '%_empty_password_text';
DELETE FROM wp_options WHERE option_name LIKE '%_empty_confirmed_password_text';
DELETE FROM wp_options WHERE option_name LIKE '%_mis_matched_password_text';
DELETE FROM wp_options WHERE option_name LIKE '%_register_success_text';
DELETE FROM wp_options WHERE option_name LIKE '%_login_success_text';
DELETE FROM wp_options WHERE option_name LIKE '%_register_link';
DELETE FROM wp_options WHERE option_name LIKE '%_register_first_login_text';
DELETE FROM wp_options WHERE option_name LIKE '%_register_second_login_text';
DELETE FROM wp_options WHERE option_name LIKE '%_register_third_login_text';
DELETE FROM wp_options WHERE option_name LIKE '%_register_submit_text';
DELETE FROM wp_options WHERE option_name LIKE '%_login_submit_text';

