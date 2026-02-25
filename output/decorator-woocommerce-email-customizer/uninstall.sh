#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_decorator_current_version'
wp option delete 'rp_decorator'
wp option delete 'wt_decorator_custom_styles'
wp option delete 'wt_decorator_custom_styles_in_draft'
wp option delete 'wt_ema_from_app'
wp option delete 'wbte_decorator_activation_redirect'
wp option delete 'sf_connector_data'
wp option delete 'woocommerce_downloads_grant_access_after_payment'
wp option delete 'wt_decorator_old_custom_styles'
wp option delete 'wt_decorator_default_template_value'
wp option delete 'wt_decorator_custom_styles_scheduled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_link_btn_switch'"
wp option delete 'wt_decorator_last_selected_template'
wp option delete 'woocommerce_email_background_color'
wp option delete 'wt_test_mail_recipients'
wp option delete 'social_links_enable'
wp option delete 'social_links_icon_color'
wp option delete 'footer_social_repeater'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body_text_enable_switch'"
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body_full'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body_partial'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_btn_switch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body_paid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_body_failed'"
wp option delete 'wt_ema_first_time_connect'
wp option delete 'rp_decorator_customer_new_account_btn_switch'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'rp_decorator_customer_reset_password_btn_switch'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_billing_address_subtitle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping_address_subtitle'"
wp option delete 'footer_social_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subtitle'"
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formatted_billing_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
