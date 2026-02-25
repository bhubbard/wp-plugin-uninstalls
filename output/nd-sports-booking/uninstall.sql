-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nd_spt_customizer_color_dark_1', 'nd_spt_customizer_color_1', 'nd_spt_customizer_color_2', 'nd_spt_max_players', 'nd_spt_occasions', 'nd_spt_timing_qnt', 'nicdark_theme_author', 'nd_spt_exceptions_qnt', 'nd_spt_booking_duration', 'nd_spt_general_description', 'nd_spt_deposit_players', 'nd_spt_br_description', 'nd_spt_default_order_status', 'nd_spt_dev_mode', 'nd_spt_email_template', 'nd_spt_stripe_enable', 'nd_spt_stripe_deposit', 'nd_spt_stripe_currency', 'nd_spt_stripe_description', 'nd_spt_stripe_public_key', 'nd_spt_stripe_secret_key', 'nd_spt_paypal_enable', 'nd_spt_paypal_deposit', 'nd_spt_paypal_currency', 'nd_spt_paypal_description', 'nd_spt_paypal_dev_mode', 'nd_spt_paypal_email', 'nd_spt_paypal_token', 'nd_spt_textarea', 'nd_spt_slot_interval', 'nd_spt_terms_page', 'nd_options_customizer_font_color_p', 'nd_options_customizer_font_family_p');
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_1_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_2_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_3_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_4_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_5_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_6_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_7_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_start_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_end_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_date_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_close_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_start_%';
DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_end_%';

