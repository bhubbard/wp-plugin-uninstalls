#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_empty_user_name_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_empty_email_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_empty_password_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_empty_confirmed_password_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mis_matched_password_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_success_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_success_text'"
wp option delete 'ced_hpul_captcha_option'
wp option delete 'ced_hp_captch_site_key'
wp option delete 'ced_hpul_enable_hide_price'
wp option delete 'ced_hpr_role'
wp option delete 'ced_hp_matched_password_text'
wp option delete 'ced_hp_empty_password_text'
wp option delete 'ced_hp_password_for_price'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'ced_hp_order_email_price_guest'
wp option delete 'ced_hp_order_email_price_logged_in'
wp option delete 'ced_hpul_extra_pages_options'
wp option delete 'ced_hpul_register_form'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_first_login_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_second_login_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_third_login_text'"
wp option delete 'ced_hpul_summary_text'
wp option delete 'ced_hp_captch_secret_key'
wp option delete 'ced_hp_order_now_text'
wp option delete 'ced_hp_password_field_placeholder'
wp option delete 'ced_hp_submit_text'
wp option delete 'ced_hp_wrong_password_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_submit_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_submit_text'"

