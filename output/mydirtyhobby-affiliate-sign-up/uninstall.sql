-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdh-promo_profile_pic_link', 'mdh-promo_profile_link', 'mdh-promo_nav_display', 'mdh-promo_register_popup_lang', 'mdh-promo_promo_code_type', 'mdh-promo_code', 'mdh-promo_nav_register_btn_txt', 'mdh-promo-sc-register-btn');
DELETE FROM wp_options WHERE option_name LIKE '%_profile_link';
DELETE FROM wp_options WHERE option_name LIKE '%_nav_display';
DELETE FROM wp_options WHERE option_name LIKE '%_sc_register_btn_class';
DELETE FROM wp_options WHERE option_name LIKE '%_code';
DELETE FROM wp_options WHERE option_name LIKE '%_promo_code_type';
DELETE FROM wp_options WHERE option_name LIKE '%_profile_pic_link';
DELETE FROM wp_options WHERE option_name LIKE '%_nav_register_btn_txt';
DELETE FROM wp_options WHERE option_name LIKE '%_register_popup_lang';

