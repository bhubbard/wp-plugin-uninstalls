#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'wc_ei_button_hyperlink_margin_message_dontshow'
wp option delete 'wc_ei_hide_inquiry_button_message_dontshow'
wp option delete 'wc_ei_hide_addtocart_message_dontshow'
wp option delete 'wc_ei_hide_price_message_dontshow'
wp option delete 'wc_ei_manual_quote_message_dontshow'
wp option delete 'wc_ei_use_woocommerce_css_message_dontshow'
wp option delete 'a3rev_wc_email_inquiry_version'
wp option delete 'a3rev_wc_email_inquiry_ultimate_version'
wp option delete 'a3rev_wc_email_inquiry_just_installed'
wp option delete 'woocommerce_db_version'
wp option delete 'wc_email_inquiry_customize_email_button'
wp option delete 'wc_email_inquiry_global_settings'
wp option delete 'wc_email_inquiry_cart_options_style_version'
wp option delete 'wc_email_inquiry_contact_success'
wp option delete 'wc_email_inquiry_rules_roles_settings'
wp option delete 'wc_email_inquiry_email_options'
wp option delete 'wc_email_inquiry_3rd_contactforms_settings'
wp option delete 'wc_email_inquiry_customize_email_popup'
wp option delete 'wc_email_inquiry_contact_form_settings'
wp option delete 'wc_email_inquiry_contact_form_information_text'
wp option delete 'wc_email_inquiry_contact_form_condition_text'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
