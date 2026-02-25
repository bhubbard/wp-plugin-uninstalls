#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp option delete 'enable_service'
wp option delete 'default_service'
wp option delete 'rpress_general'
wp option delete 'rpress_gateways'
wp option delete 'rpress_emails'
wp option delete 'rpress_styles'
wp option delete 'rpress_taxes'
wp option delete 'rpress_extensions'
wp option delete 'rpress_misc'
wp option delete 'rpress_settings'
wp option delete 'rpress_settings_general'
wp option delete 'rpress_settings_gateways'
wp option delete 'rpress_settings_emails'
wp option delete 'rpress_settings_styles'
wp option delete 'rpress_settings_taxes'
wp option delete 'rpress_settings_misc'
wp option delete 'rpress_upgrade_sequential'
wp option delete 'rpress_tax_rates'
wp option delete 'rpress_temp_recount_earnings'
wp option delete 'rpress_earnings_total'
wp option delete 'rpress_last_payment_number'
wp option delete 'rpress_temp_reset_ids'
wp option delete 'rpress_doing_upgrade'
wp option delete 'rpress_version_upgraded_from'
wp option delete 'active_sitewide_plugins'
wp option delete 'rpress_tracking_last_send'
wp option delete 'rpress_tracking_notice'
wp option delete 'rpress_version'
wp option delete 'rpress_completed_upgrades'
wp option delete 'rpress_logs_upgraded'
wp option delete 'rpress_discounts'
wp option delete 'rpress_upgrade_customers_db_version'
wp option delete 'rpress_default_api_version'
wp option delete 'rp_last_order_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'rpress_use_php_sessions'
wp option delete 'rpress_show_setup_wizard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete '_rpress_table_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%'"
wp option delete '_wp_session_list'
wp option delete 'rpress_payment_totals_upgraded'
wp option delete 'site_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rpress_priv_%'"
wp option delete 'wp_rpress_customers_db_version'
wp option delete 'wp_rpress_customermeta_db_version'
wp option delete 'widget_rpress_categories_tags_widget'
wp option delete 'widget_rpress_product_details'

# Delete Transients
wp transient delete 'restropress_add_ons_feed'
wp transient delete 'rpress_total_api_keys'
wp transient delete 'rpress_stats_earnings'
wp transient delete 'rpress_stats_sales'
wp transient delete 'rpress_estimated_monthly_stats'
wp transient delete 'rpress_earnings_total'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rpress_estimated_monthly_stats%' OR option_name LIKE '_site_transient_rpress_estimated_monthly_stats%'"
wp transient delete 'rpress_check_protection_files'
wp transient delete 'rpress-total-api-keys'
wp transient delete 'update_plugins'
wp transient delete 'rpress_cache_excluded_uris'
wp transient delete '_rpress_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_purchases' OR option_name LIKE '_site_transient_%_purchases'"
wp transient delete 'rpress_stats_refunded'
wp transient delete 'rpress_stats_taxes'
wp transient delete 'rpress_refresh_404_permalinks'
wp transient delete '_rpress_ajax_works'

# Clear Cron Jobs
wp cron event delete 'rpress_weekly_scheduled_events'
wp cron event delete 'rpress_daily_scheduled_events'
wp cron event delete 'wp_session_garbage_collection'
wp cron event delete 'rpress_after_payment_scheduled_actions'
wp cron event delete 'rpress_daily_cron'
wp cron event delete 'rpress_weekly_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_set_menupage_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_set_menupage_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_set_menupage_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_set_menupage_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_set_checkout_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_set_checkout_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_set_checkout_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_set_checkout_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_user_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_user_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_user_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_user_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_fooditem_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_fooditem_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_fooditem_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_fooditem_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rp_item_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rp_item_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rp_item_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rp_item_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_addon_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_addon_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_addon_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_addon_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_variable_price_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_variable_price_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_variable_price_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_variable_price_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_food_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_food_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_food_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_food_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_fooditem_earnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_fooditem_earnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_fooditem_earnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_fooditem_earnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_product_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_product_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_product_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_product_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_variable_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_variable_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_variable_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_variable_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_fooditem_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_fooditem_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_fooditem_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_fooditem_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pre_trash_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pre_trash_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pre_trash_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pre_trash_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_payment_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_payment_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_payment_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_payment_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_delivery_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_delivery_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_delivery_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_delivery_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_dinein_table_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_dinein_table_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_dinein_table_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_dinein_table_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_user_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_user_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_user_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_user_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_request_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_request_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_request_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_request_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_payment_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_payment_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_payment_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_payment_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_price_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_price_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_price_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_price_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_log_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_log_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_log_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_log_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rpress_discount_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rpress_discount_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rpress_discount_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rpress_discount_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_payment_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_payment_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_payment_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_payment_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_saved_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_saved_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_saved_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_saved_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_cart_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_cart_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_cart_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_cart_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_addresses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_user_delivery_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_user_delivery_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_user_delivery_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_user_delivery_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_default_address_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_default_address_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_default_address_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_default_address_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_user_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_user_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_user_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_user_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpress_user_public_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpress_user_public_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpress_user_public_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpress_user_public_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_price_options_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_price_options_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_price_options_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_price_options_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_bundled_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_bundled_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_bundled_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_bundled_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_button_behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_button_behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_button_behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_button_behavior'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_quantities_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_quantities_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_quantities_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_quantities_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_bundled_products_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_bundled_products_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_bundled_products_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_bundled_products_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rpress_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rpress_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rpress_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rpress_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_order_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_order_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_order_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_order_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_sales_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_sales_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_sales_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_sales_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_file_fooditem_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_file_fooditem_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_file_fooditem_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_file_fooditem_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_default_price_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_default_price_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_default_price_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_default_price_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_payment_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_payment_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_payment_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_payment_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rp_api_user_private_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rp_api_user_private_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rp_api_user_private_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rp_api_user_private_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rp_api_user_public_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rp_api_user_public_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rp_api_user_public_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rp_api_user_public_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_hide_purchase_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_hide_purchase_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_hide_purchase_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_hide_purchase_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rpress_pending_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rpress_pending_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rpress_pending_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rpress_pending_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rp_api_keys_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rp_api_keys_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rp_api_keys_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rp_api_keys_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rp_api_user_token_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rp_api_user_token_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rp_api_user_token_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rp_api_user_token_key'"
