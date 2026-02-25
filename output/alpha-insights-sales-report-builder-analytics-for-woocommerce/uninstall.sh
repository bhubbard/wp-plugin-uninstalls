#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpd_ai_email_settings'
wp option delete 'wpd_ai_cost_defaults'
wp option delete 'wpd_ai_order_status'
wp option delete 'wpd_ai_admin_style_override'
wp option delete 'wpd_ai_prevent_wp_notices'
wp option delete 'wpd_ai_use_legacy_order_admin_metaboxes'
wp option delete 'wpd_ai_refunded_order_costs'
wp option delete 'wpd_ai_cache_build_batch_size'
wp option delete 'wpd_ai_db_version'
wp option delete 'wpd_ai_currency_table'
wp option delete 'wpd_ai_plugin_visibility'
wp option delete 'wpd_ai_payment_gateway_costs'
wp option delete 'wpd_ai_shipping_costs'
wp option delete 'wpd_ai_admin_custom_columns'
wp option delete 'wpd_ai_custom_order_costs'
wp option delete 'wpd_ai_custom_product_costs'
wp option delete 'wpd_ai_analytics'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wpd_ai_onboarding_completed'
wp option delete 'wpd_ai_migrations_completion_times'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpd_dashboard_config_%'"
wp option delete 'wpd_ai_initial_report_configs_install'
wp option delete 'wpd_ai_all_orders_cached'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpd_dashboard_last_updated_%'"
wp option delete 'woocommerce_currency'
wp option delete 'wpd_ai_site_creation_date'
wp option delete 'wpd_ai_daily_emails_sent'
wp option delete 'wpd_ai_weekly_emails_sent'
wp option delete 'wpd_ai_monthly_emails_sent'
wp option delete 'wpd_ai_analytics_only_track_engaged_sessionss'
wp option delete 'wpd_ai_webhook_settings'
wp option delete 'wpd_ai_pending_db_update'
wp option delete 'wpd_ai_cache_version'
wp option delete 'wpd_ai_plugin_update_version'
wp option delete 'wpd_ai_pending_rewrite_flush'
wp option delete 'wpd_ai_pending_report_installation'
wp option delete 'wpd_ai_pending_migration_runner'

# Delete Transients
wp transient delete 'wpd_ai_report_filters_order_query_parameter_values'
wp transient delete 'wpd_ai_report_filters_users'
wp transient delete 'wpd_ai_report_filters_products'
wp transient delete 'wpd_ai_report_filters_product_categories'
wp transient delete 'wpd_ai_report_filters_product_tags'
wp transient delete 'wpd_ai_report_filters_billing_countries'
wp transient delete 'wpd_ai_report_filters_facebook_campaigns'
wp transient delete 'wpd_ai_report_filters_google_campaigns'
wp transient delete 'wpd_ai_report_filters_expense_categories'
wp transient delete 'wpd_ai_report_filters_website_traffic_query_parameter_values'
wp transient delete 'wpd_ai_report_filters_website_traffic_events'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__wpd_product_statistics_%' OR option_name LIKE '_site_transient__wpd_product_statistics_%'"
wp transient delete 'wpdai_product_meta_keys'
wp transient delete '_wpd_updating_all_orders_cache'
wp transient delete 'wpd_ai_free_deactivated_by_pro'
wp transient delete 'wpd_ai_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_referral_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_referral_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_referral_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_referral_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_registration_url_current'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_registration_url_current'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_registration_url_current'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_registration_url_current'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_registration_url_referral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_registration_url_referral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_registration_url_referral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_registration_url_referral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_last_login_unix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_last_login_unix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_last_login_unix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_last_login_unix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_product_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_custom_product_costs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_custom_product_costs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_custom_product_costs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_custom_product_costs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_product_data_store'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_product_data_store'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_product_data_store'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_product_data_store'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_analytics_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_analytics_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_analytics_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_analytics_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_ai_product_analytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_ai_product_analytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_ai_product_analytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_ai_product_analytics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpd_user_analytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpd_user_analytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpd_user_analytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpd_user_analytics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
