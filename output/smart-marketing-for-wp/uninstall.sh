#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_error_status'
wp option delete 'egoi_api_key'
wp option delete 'transactional_email_option'
wp option delete 'transactional_email_error_option'
wp option delete 'egoi_int'
wp option delete 'egoi_transactional_email'
wp option delete 'egoi_mapping'
wp option delete 'egoi_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_rssfeed_%'"
wp option delete 'egoi_webpush_code'
wp option delete 'egoi_catalog_sync'
wp option delete 'egoi_catalogs_options'
wp option delete 'egoi_import_bypass'
wp option delete 'egoi_notifications'
wp option delete 'egoi_sms_counter'
wp option delete 'egoi_sync'
wp option delete 'egoi_client'
wp option delete 'egoi_client_allow'
wp option delete 'egoi_client_kill'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_simple_form_%'"
wp option delete 'egoi_client_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_form_sync_%'"
wp option delete 'egoi_widget'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'egoi_has_list'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_text_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_simple_form_post_increment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_simple_form_post_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_email_campaign_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_webpush_campaign_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'egoi_popup_%'"
wp option delete 'egoi_store_catalogs'
wp option delete 'widget_egoi4widget'
wp option delete 'egoi_mapping_gf'
wp option delete 'egoi_tag_function'
wp option delete 'woocommerce_version'

# Delete Transients
wp transient delete 'egoi_campaigns_error'
wp transient delete 'egoi_information_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_egoi_validator_%' OR option_name LIKE '_site_transient_egoi_validator_%'"
wp transient delete 'egoi_ok1'

# Clear Cron Jobs
wp cron event delete 'egoi_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'check_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'check_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'check_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'check_newsletter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'egoi_newsletter_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'egoi_newsletter_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'egoi_newsletter_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'egoi_newsletter_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_egoi_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_egoi_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_egoi_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_egoi_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_egoi_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_egoi_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_egoi_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_egoi_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_campaign_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_campaign_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_campaign_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_campaign_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_campaign_widget_sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_campaign_widget_sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_campaign_widget_sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_campaign_widget_sender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpush_campaign_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpush_campaign_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpush_campaign_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpush_campaign_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpush_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpush_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpush_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpush_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpush_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpush_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpush_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpush_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpush_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpush_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpush_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpush_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpush_campaign_widget_site_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpush_campaign_widget_site_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpush_campaign_widget_site_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpush_campaign_widget_site_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_list_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_modify_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_custom_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_campaign_widget_custom_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_campaign_widget_custom_content'"
