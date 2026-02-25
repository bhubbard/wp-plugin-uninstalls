#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gepaid_installed_on'
wp option delete 'wpinv_redirected_to_settings'
wp option delete 'wpinv_tax_rates'
wp option delete 'wpinv_admin_notices'
wp option delete 'wpinv_version'
wp option delete 'getpaid_db_schema'
wp option delete 'wpinv_settings'
wp option delete 'wpinv_tax_rules'
wp option delete 'wpinv_remove_data_on_invoice_unistall'
wp option delete 'wpinv_last_invoice_number'
wp option delete 'wpinv_cleared_old_events'
wp option delete 'getpaid_flushed_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'wpinv_renamed_gateways'
wp option delete 'wpinv_flush_permalinks'
wp option delete 'getpaid_authorize_net_cached_profiles'
wp option delete 'wpinv_maxmind_database_prefix'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"
wp option delete 'wpinv_default_payment_form'
wp option delete 'ayecode_connect_blog_token'
wp option delete 'ayecode-ui-settings'
wp option delete 'aui_options'
wp option delete 'wp-font-awesome-settings'
wp option delete 'rgmk_google_map_api_key'

# Delete Transients
wp transient delete 'getpaid_updated_geoip_databases'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_addons_section_%' OR option_name LIKE '_site_transient_wpi_addons_section_%'"
wp transient delete 'wpinv_cache_excluded_uris'
wp transient delete 'getpaid_count_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_token' OR option_name LIKE '_site_transient_%_token'"
wp transient delete 'getpaid_paypal_sandbox_access_token'
wp transient delete 'getpaid_paypal_access_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_geoip_%' OR option_name LIKE '_site_transient_geoip_%'"
wp transient delete 'wp-font-awesome-settings-version'

# Clear Cron Jobs
wp cron event delete 'getpaid_daily_maintenance'
wp cron event delete 'wpinv_register_schedule_event_twicedaily'
wp cron event delete 'wpinv_register_schedule_event_daily'
wp cron event delete 'wp_session_garbage_collection'
wp cron event delete 'geodir_plugin_background_installer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getpaid_admin_footer_text_rated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getpaid_admin_footer_text_rated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getpaid_admin_footer_text_rated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getpaid_admin_footer_text_rated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpinv_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpinv_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpinv_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpinv_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_email_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_email_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_email_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_email_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_created_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_created_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_created_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_created_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_one_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_one_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_one_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_one_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_uses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_uses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_uses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_uses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_is_single_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_is_single_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_is_single_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_is_single_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_excluded_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_excluded_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_excluded_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_excluded_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_required_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_required_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_required_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_required_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_max_uses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_max_uses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_max_uses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_max_uses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_is_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_is_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_is_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_is_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_min_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_min_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_min_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_min_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_discount_max_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_discount_max_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_discount_max_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_discount_max_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_item_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_item_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_item_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_item_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpi_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpi_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpi_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpi_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getpaid_subscription_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getpaid_subscription_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getpaid_subscription_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getpaid_subscription_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_subscr_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_subscr_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_subscr_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_subscr_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getpaid_authorizenet_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getpaid_authorizenet_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getpaid_authorizenet_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getpaid_authorizenet_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'refunded_remotely'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'refunded_remotely'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'refunded_remotely'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'refunded_remotely'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_processed_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_processed_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_processed_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_processed_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_email_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_email_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_email_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_email_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_form_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_form_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_form_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_form_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_tax_exclusive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_tax_exclusive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_tax_exclusive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_tax_exclusive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_by_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_by_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_by_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_by_default'"
