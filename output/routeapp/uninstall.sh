#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'routeapp_merchant_id'
wp option delete 'routeapp_secret_token'
wp option delete '_routeapp_webhooks_created'
wp option delete '_routeapp_webhooks_secret'
wp option delete 'routeapp_included_order_statuses'
wp option delete 'routeapp_cancel_order_statuses'
wp option delete 'routeapp_public_token'
wp option delete 'routeapp_user_token'
wp option delete 'routeapp_user_id'
wp option delete '_routeapp_last_install_date'
wp option delete 'routeapp_route_enable_extra_columns'
wp option delete '_routeapp_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'mimo_provider_list'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_weight_unit'
wp option delete 'routeapp_taxable_class'
wp option delete 'routeapp_checkout_hook'
wp option delete 'routeapp_route_fee_taxable'
wp option delete 'routeapp_excluded_shipping_methods'
wp option delete 'routeapp_route_fresh_installed'
wp option delete 'routeapp_route_show_order_updates'
wp option delete 'routeapp_failed_registration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_included_order_statuses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_included_order_statuses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_included_order_statuses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_included_order_statuses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_cancel_order_statuses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_cancel_order_statuses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_cancel_order_statuses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_cancel_order_statuses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_route_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_route_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_route_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_route_protection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'routeapp_shipment_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'routeapp_shipment_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'routeapp_shipment_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'routeapp_shipment_tracking_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bst_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bst_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bst_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bst_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bst_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bst_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bst_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bst_tracking_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'routeapp_shipment_api_called'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'routeapp_shipment_api_called'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'routeapp_shipment_api_called'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'routeapp_shipment_api_called'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'routeapp_shipment_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'routeapp_shipment_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'routeapp_shipment_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'routeapp_shipment_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usps_evs_label_details_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usps_evs_label_details_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usps_evs_label_details_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usps_evs_label_details_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_version'"
