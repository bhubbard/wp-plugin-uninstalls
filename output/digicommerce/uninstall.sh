#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digicommerce_db_versions'
wp option delete 'digicommerce_rewrite_rules_flushed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'digicommerce_download_count_%'"
wp option delete 'digicommerce_pro_license_key'
wp option delete 'digicommerce_pro_license_status'
wp option delete 'digicommerce_enable_booking'
wp option delete 'digicommerce_enable_programs'
wp option delete 'digicommerce_enable_affiliation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'digicommerce_%'"
wp option delete 'classic-editor-settings'
wp option delete 'digicommerce_activation_timestamp'
wp option delete 'digicommerce_review_notice_dismissed'
wp option delete 'digicommerce_business_name'
wp option delete 'digicommerce_business_vat_number'
wp option delete 'digicommerce_business_country'
wp option delete 'digicommerce_business_address'
wp option delete 'digicommerce_business_address2'
wp option delete 'digicommerce_business_city'
wp option delete 'digicommerce_business_postal'
wp option delete 'digicommerce_business_logo'
wp option delete 'digicommerce_currency'
wp option delete 'digicommerce_currency_position'
wp option delete 'digicommerce_thousand_sep'
wp option delete 'digicommerce_decimal_sep'
wp option delete 'digicommerce_num_decimals'
wp option delete 'digicommerce_block_admin'
wp option delete 'digicommerce_redirect_login'
wp option delete 'digicommerce_redirect_after_logout'
wp option delete 'digicommerce_register_form'
wp option delete 'digicommerce_register_text'
wp option delete 'digicommerce_login_text'
wp option delete 'digicommerce_invoices_footer'
wp option delete 'digicommerce_product_slug'
wp option delete 'digicommerce_product_cat_slug'
wp option delete 'digicommerce_product_tag_slug'
wp option delete 'digicommerce_product_cpt'
wp option delete 'digicommerce_account_page_id'
wp option delete 'digicommerce_reset_password_page_id'
wp option delete 'digicommerce_checkout_page_id'
wp option delete 'digicommerce_payment_success_page_id'
wp option delete 'digicommerce_recaptcha_site_key'
wp option delete 'digicommerce_recaptcha_secret_key'
wp option delete 'digicommerce_stripe_mode'
wp option delete 'digicommerce_stripe_test_publishable_key'
wp option delete 'digicommerce_stripe_test_secret_key'
wp option delete 'digicommerce_stripe_live_publishable_key'
wp option delete 'digicommerce_stripe_live_secret_key'
wp option delete 'digicommerce_stripe_webhook_secret'
wp option delete 'digicommerce_paypal_sandbox'
wp option delete 'digicommerce_paypal_client_id'
wp option delete 'digicommerce_paypal_secret'
wp option delete 'digicommerce_paypal_webhook_id'
wp option delete 'digicommerce_remove_taxes'
wp option delete 'digicommerce_login_during_checkout'
wp option delete 'digicommerce_minimal_style'
wp option delete 'digicommerce_minimal_fields'
wp option delete 'digicommerce_order_agreement'
wp option delete 'digicommerce_modal_terms'
wp option delete 'digicommerce_remove_product'
wp option delete 'digicommerce_empty_cart_title'
wp option delete 'digicommerce_empty_cart_text'
wp option delete 'digicommerce_empty_cart_button_text'
wp option delete 'digicommerce_empty_cart_button_url'
wp option delete 'digicommerce_email_from_name'
wp option delete 'digicommerce_email_from_address'
wp option delete 'digicommerce_email_header_logo'
wp option delete 'digicommerce_email_header_logo_width'
wp option delete 'digicommerce_email_new_account'
wp option delete 'digicommerce_email_order_confirmation'
wp option delete 'digicommerce_email_order_cancelled'
wp option delete 'digicommerce_email_order_refunded'
wp option delete 'digicommerce_email_new_order_admin'
wp option delete 'digicommerce_email_footer_text'
wp option delete 'digicommerce_show_social_links_in_email'
wp option delete 'digicommerce_social_links'
wp option delete 'digicommerce_disable_styling'
wp option delete 'digicommerce_color_gold'
wp option delete 'digicommerce_color_yellow'
wp option delete 'digicommerce_color_border'
wp option delete 'digicommerce_color_light_blue'
wp option delete 'digicommerce_color_light_blue_bg'
wp option delete 'digicommerce_color_dark_blue'
wp option delete 'digicommerce_color_dark_blue_10'
wp option delete 'digicommerce_color_dark_blue_20'
wp option delete 'digicommerce_color_hover_blue'
wp option delete 'digicommerce_color_grey'
wp option delete 'digicommerce_color_dark_grey'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_digicommerce_download_%' OR option_name LIKE '_site_transient_digicommerce_download_%'"
wp transient delete 'digicommerce_import_results'
wp transient delete 'digicommerce_pro_license_details'
wp transient delete 'digicommerce_pro_update_check'
wp transient delete 'digicommerce_review_notice_dismissed_temporarily'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_digicommerce_login_attempts_%' OR option_name LIKE '_site_transient_digicommerce_login_attempts_%'"

# Clear Cron Jobs
wp cron event delete 'digicommerce_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_price_variations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_price_variations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_price_variations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_price_variations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'section_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'section_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'section_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'section_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_gallery_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_gallery_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_gallery_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_gallery_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_price_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_price_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_price_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_price_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_product_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_product_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_product_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_product_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_bundle_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_bundle_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_bundle_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_bundle_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_license_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_license_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_license_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_license_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_upgrade_paths'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_upgrade_paths'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_upgrade_paths'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_upgrade_paths'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_api_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_api_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_api_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_api_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_subscription_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_subscription_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_subscription_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_subscription_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_subscription_free_trial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_subscription_free_trial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_subscription_free_trial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_subscription_free_trial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digi_subscription_signup_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digi_subscription_signup_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digi_subscription_signup_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digi_subscription_signup_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digicommerce_orders_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digicommerce_orders_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digicommerce_orders_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digicommerce_orders_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_customer_id'"
