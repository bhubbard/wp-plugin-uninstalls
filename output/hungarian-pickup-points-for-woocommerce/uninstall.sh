#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vp_woo_pont_cod_fees'
wp option delete 'woocommerce_vp_pont_settings'
wp option delete 'pickup_location_pickup_locations'
wp option delete 'vp_woo_pont_home_delivery'
wp option delete 'vp_woo_pont_automations'
wp option delete 'vp_woo_pont_styles'
wp option delete 'vp_woo_pont_custom_icon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vp_woo_pont_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_webhook_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_vp_woo_pont_db_%'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'vp_woo_pont_enabled_providers'
wp option delete 'vp_woo_pont_pricing'
wp option delete 'vp_woo_pont_weight_corrections'
wp option delete 'woocommerce_weight_unit'
wp option delete 'vp_woo_pont_notes'
wp option delete 'vp_woo_pont_packeta_countries'
wp option delete 'vp_woo_pont_gls_countries'
wp option delete 'vp_woo_pont_dpd_countries'
wp option delete 'vp_woo_pont_sameday_countries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_vp_woo_pont_file_%'"
wp option delete '_vp_woo_pont_pro_enabled'
wp option delete 'vp_woo_pont_packagings'
wp option delete 'vp_woo_pont_kvikk_courier_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_labels'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'vp_woo_pont_packeta_carriers'
wp option delete 'vp_woo_pont_posta_countries'
wp option delete 'vp_woo_pont_pactic_external_providers'
wp option delete 'vp_woo_pont_tracking_automations'
wp option delete 'vp_woo_pont_points'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'vp_woo_pont_version_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vp_woo_pont_show_%'"
wp option delete 'vp_woo_pont_show_upgrade_notice_400'
wp option delete 'vp_woo_pont_free_shipping'
wp option delete 'woocommerce_vp_pont_settings_old'
wp option delete 'vp_woo_pont_cod_disabled'
wp option delete '_vp_woo_pont_db_postapont_posta'
wp option delete '_vp_woo_pont_walkthrough_finished'
wp option delete 'woocommerce_pickup_location_settings'
wp option delete 'vp_woo_pont_kvikk_countries'
wp option delete 'vp_woo_pont_kvikk_pricing_file'
wp option delete '_vp_woo_pont_hide_kvikk_info_v2'
wp option delete 'vp_woo_pont_kvikk_foxpost_type_selected'
wp option delete '_packeta_pickup_point_carriers'
wp option delete '_packeta_home_delivery_carriers'
wp option delete 'vp_woo_pont_free_shipping_coupon'
wp option delete 'vp_woo_pont_custom_title'
wp option delete 'vp_woo_pont_show_on_cart'
wp option delete 'vp_woo_pont_show_open_hours'
wp option delete 'vp_woo_pont_show_on_change'
wp option delete 'vp_woo_pont_filter_checkbox'
wp option delete 'vp_woo_pont_small_icons'
wp option delete 'active_sitewide_plugins'
wp option delete 'vp_woo_pont_custom_button_label'
wp option delete 'woocommerce_email_base_color'

# Delete Transients
wp transient delete 'vp_woo_pont_csomagpiac_pickup_points'
wp transient delete 'vp_woo_pont_kvikk_senders'
wp transient delete '_vp_woo_pont_posta_access_token'
wp transient delete '_vp_woo_pont_sameday_access_token'
wp transient delete 'vp_woo_pont_sameday_pickup_points'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vp_woo_pont_point_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vp_woo_pont_point_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vp_woo_pont_point_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vp_woo_pont_point_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_woo_pont_packeta_age_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_woo_pont_packeta_age_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_woo_pont_packeta_age_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_woo_pont_packeta_age_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vp_woo_pont_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vp_woo_pont_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vp_woo_pont_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vp_woo_pont_admin_notices'"
