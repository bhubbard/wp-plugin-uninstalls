#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopglut_plugin_first_activation_redirect'
wp option delete 'agshopglut_pdf_invoices_options'
wp option delete 'datetime_format'
wp option delete 'shopglut_invoice_last_yearly_reset'
wp option delete 'shopglut_pdf_invoices_license_key'
wp option delete 'shopglut_pretty_links_version'
wp option delete 'agshopglut_pdf_invoices_invoice_template'
wp option delete 'agshopglut_pdf_invoices_packaging_template'
wp option delete 'woocommerce_weight_unit'
wp option delete 'shopglut_intentionally_deleted_tables'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'agshopglut_wishlist_options'
wp option delete 'agshopglut_subscription_options'
wp option delete 'shopglut_checkout_fields_settings'
wp option delete 'shopglut_global_swatches_settings'
wp option delete 'shopglut_filter_count'
wp option delete 'agshopglut_swatches_options'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'shopgs_shop'
wp option delete 'shopglut_active_accountpage_layout'
wp option delete 'shopglut_woo_override_enabled'
wp option delete 'shopglut_wishlist_cron_token'
wp option delete 'shopglut_wishlist_cache_version'
wp option delete 'shopglut_active_cart_layout'
wp option delete 'shopglut_active_ordercomplete_layout'
wp option delete 'shopglut_newsletter_count'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'shopglut_active_thankpage_layout'
wp option delete 'agshopglut_settings_options'
wp option delete 'agshopglut_login_register_options'
wp option delete 'shopglut_pro_license_active'
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'shopglut_custom_mega_menus'
wp option delete 'shopglut_active_woo_theme'
wp option delete 'shopglut_shop_banners'
wp option delete 'active_sitewide_plugins'
wp option delete 'shopglut_gallery_options'
wp option delete 'shopglut_login_register_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shopglut_template_custom_%'"
wp option delete 'shopglut_recaptcha_site_key'
wp option delete 'shopglut_recaptcha_secret_key'
wp option delete 'shopglut_mega_menu_settings'
wp option delete 'agshopglut_minicart_options'
wp option delete 'shopglut_custom_templates'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_merge_wishlist_%' OR option_name LIKE '_site_transient_merge_wishlist_%'"
wp transient delete 'shopglut_admin_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shopglut_failed_attempts_%' OR option_name LIKE '_site_transient_shopglut_failed_attempts_%'"

# Clear Cron Jobs
wp cron event delete 'shopglut_subscription_renewal_reminder'
wp cron event delete 'shopglut_subscription_renewal'
wp cron event delete 'shopglut_process_subscription_payments'
wp cron event delete 'shopglut_subscription_status_check'
wp cron event delete 'shopglut_daily_guest_cleanup'
wp cron event delete 'send_wishlist_email_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_printed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_printed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_printed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_printed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packing_slip_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packing_slip_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packing_slip_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packing_slip_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packing_slip_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packing_slip_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packing_slip_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packing_slip_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packing_slip_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packing_slip_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packing_slip_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packing_slip_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ubl_invoice_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ubl_invoice_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ubl_invoice_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ubl_invoice_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ubl_invoice_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ubl_invoice_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ubl_invoice_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ubl_invoice_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ubl_invoice_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ubl_invoice_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ubl_invoice_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ubl_invoice_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_signup_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_signup_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_signup_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_signup_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixed_renewal_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixed_renewal_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixed_renewal_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixed_renewal_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixed_renewal_day_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixed_renewal_day_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixed_renewal_day_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixed_renewal_day_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixed_renewal_day_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixed_renewal_day_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixed_renewal_day_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixed_renewal_day_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixed_renewal_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixed_renewal_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixed_renewal_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixed_renewal_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fixed_renewal_day_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fixed_renewal_day_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fixed_renewal_day_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fixed_renewal_day_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_early_renewal_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_early_renewal_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_early_renewal_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_early_renewal_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_early_renewal_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_early_renewal_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_early_renewal_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_early_renewal_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopgs_bicolor_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopgs_bicolor_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopgs_bicolor_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopgs_bicolor_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopgs_bicolor_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopgs_bicolor_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopgs_bicolor_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopgs_bicolor_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopgs_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopgs_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopgs_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopgs_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopgs_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopgs_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopgs_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopgs_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shopgs_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shopgs_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shopgs_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shopgs_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_specifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_specifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_specifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_specifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_agl_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_agl_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_agl_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_agl_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopg_product_badge_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopg_product_badge_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopg_product_badge_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopg_product_badge_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopglut_email_verification_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopglut_email_verification_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopglut_email_verification_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopglut_email_verification_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopglut_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopglut_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopglut_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopglut_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopglut_newsletter_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopglut_newsletter_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopglut_newsletter_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopglut_newsletter_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
