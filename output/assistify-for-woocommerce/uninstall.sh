#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'assistify_migration_version'
wp option delete 'assistify_primary_color'
wp option delete 'assistify_content_default_length'
wp option delete 'assistify_content_default_tone'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_review_rating_required'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_specific_ship_to_countries'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_shipping_debug_mode'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_calc_discounts_sequentially'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_privacy_policy_text'
wp option delete 'woocommerce_checkout_privacy_policy_text'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_db_version'
wp option delete 'assistify_api_key'
wp option delete 'assistify_ai_provider'
wp option delete 'assistify_ai_model'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'assistify_enable_health_monitoring'
wp option delete 'woocommerce_email_from_address'
wp option delete 'assistify_admin_chat_enabled'
wp option delete 'assistify_chat_position'
wp option delete 'assistify_api_usage'
wp option delete 'assistify_version'
wp option delete 'assistify_debug_logging'
wp option delete 'assistify_db_version'
wp option delete 'assistify_audit_log_retention'
wp option delete 'assistify_image_model'
wp option delete 'assistify_image_size'
wp option delete 'assistify_image_quality'
wp option delete 'assistify_image_style'
wp option delete 'assistify_removebg_api_key'
wp option delete 'assistify_removebg_size'
wp option delete 'assistify_customer_chat_enabled'
wp option delete 'assistify_guest_chat_enabled'
wp option delete 'assistify_product_context_limit'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_cheque_settings'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_free_shipping_min_amount'
wp option delete 'assistify_assistant_name'
wp option delete 'assistify_show_privacy_link'
wp option delete 'assistify_auto_open_delay'
wp option delete 'assistify_auto_open_enabled'
wp option delete 'assistify_sound_enabled'
wp option delete 'assistify_custom_sound_url'
wp option delete 'assistify_show_ai_attribution'
wp option delete 'assistify_resolved_issues'
wp option delete 'assistify_last_cron_run'
wp option delete '_site_transient_timeout_update_plugins'
wp option delete 'assistify_alert_email'
wp option delete 'assistify_alert_critical'
wp option delete 'assistify_alert_payment'
wp option delete 'assistify_alert_stock'
wp option delete 'woocommerce_email_from_name'
wp option delete 'assistify_image_usage'
wp option delete 'assistify_remove_data_on_uninstall'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_assistify_pending_action_%' OR option_name LIKE '_site_transient_assistify_pending_action_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_assistify_confirm_%' OR option_name LIKE '_site_transient_assistify_confirm_%'"
wp transient delete 'assistify_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_assistify_chat_history_%' OR option_name LIKE '_site_transient_assistify_chat_history_%'"
wp transient delete 'assistify_low_stock_alert'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_assistify_ssl_info_%' OR option_name LIKE '_site_transient_assistify_ssl_info_%'"
wp transient delete 'assistify_health_results'
wp transient delete 'assistify_last_health_alert'
wp transient delete 'assistify_recent_order_failures'
wp transient delete 'assistify_payment_spike_alert'
wp transient delete 'assistify_payment_stats'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'assistify_daily_cleanup'
wp cron event delete 'assistify_health_check_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assistify_background_removed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assistify_background_removed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assistify_background_removed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assistify_background_removed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assistify_original_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assistify_original_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assistify_original_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assistify_original_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assistify_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assistify_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assistify_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assistify_ai_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assistify_ai_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assistify_ai_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assistify_ai_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assistify_ai_prompt'"
