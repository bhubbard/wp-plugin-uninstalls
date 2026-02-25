#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trackingmore_option_name'
wp option delete 'trackingmore_api_enabled'
wp option delete 'trackingmore_prices_include_tax'
wp option delete 'trackingmore_weight_unit'
wp option delete 'trackingmore_dimension_unit'
wp option delete 'trackingmore_force_ssl_checkout'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_shipdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_shipdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_shipdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_shipdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_postal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_postal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_postal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_postal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_destination_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_destination_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_destination_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_destination_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_origin_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_origin_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_origin_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_origin_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackingmore_tracking_provider_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackingmore_tracking_provider_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackingmore_tracking_provider_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackingmore_tracking_provider_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trackingmore_wp_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trackingmore_wp_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trackingmore_wp_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trackingmore_wp_api_key'"
