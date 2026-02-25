#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nd_spt_customizer_color_dark_1'
wp option delete 'nd_spt_customizer_color_1'
wp option delete 'nd_spt_customizer_color_2'
wp option delete 'nd_spt_max_players'
wp option delete 'nd_spt_occasions'
wp option delete 'nd_spt_timing_qnt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_1_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_3_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_4_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_5_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_6_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_7_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_start_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_timing_end_%'"
wp option delete 'nicdark_theme_author'
wp option delete 'nd_spt_exceptions_qnt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_date_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_close_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_start_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nd_spt_exception_end_%'"
wp option delete 'nd_spt_booking_duration'
wp option delete 'nd_spt_general_description'
wp option delete 'nd_spt_deposit_players'
wp option delete 'nd_spt_br_description'
wp option delete 'nd_spt_default_order_status'
wp option delete 'nd_spt_dev_mode'
wp option delete 'nd_spt_email_template'
wp option delete 'nd_spt_stripe_enable'
wp option delete 'nd_spt_stripe_deposit'
wp option delete 'nd_spt_stripe_currency'
wp option delete 'nd_spt_stripe_description'
wp option delete 'nd_spt_stripe_public_key'
wp option delete 'nd_spt_stripe_secret_key'
wp option delete 'nd_spt_paypal_enable'
wp option delete 'nd_spt_paypal_deposit'
wp option delete 'nd_spt_paypal_currency'
wp option delete 'nd_spt_paypal_description'
wp option delete 'nd_spt_paypal_dev_mode'
wp option delete 'nd_spt_paypal_email'
wp option delete 'nd_spt_paypal_token'
wp option delete 'nd_spt_textarea'
wp option delete 'nd_spt_slot_interval'
wp option delete 'nd_spt_terms_page'
wp option delete 'nd_options_customizer_font_color_p'
wp option delete 'nd_options_customizer_font_family_p'

