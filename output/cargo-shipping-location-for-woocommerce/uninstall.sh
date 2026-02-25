#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cslfw_cargo_api_key'
wp option delete 'cslfw_box_info_email'
wp option delete 'from_street'
wp option delete 'from_street_name'
wp option delete 'from_city'
wp option delete 'phonenumber_from'
wp option delete 'shipping_cargo_express'
wp option delete 'shipping_cargo_box'
wp option delete 'cargo_box_style'
wp option delete 'cslfw_auto_shipment_create'
wp option delete 'cslfw_shipping_methods'
wp option delete 'cslfw_shipping_methods_all'
wp option delete 'cslfw_products_in_label'
wp option delete 'cslfw_complete_orders'
wp option delete 'cslfw_webhooks_installed'
wp option delete 'shipping_cargo_express_24'
wp option delete 'shipping_pickup_code'
wp option delete 'cslfw_debug_mode'
wp option delete 'cslfw_cod_check'
wp option delete 'cslfw_fulfill_all'
wp option delete 'cslfw_bulk_actions'
wp option delete 'cslfw_queued_bulk_labels'
wp option delete 'website_name_cargo'
wp option delete 'cargo_order_status'
wp option delete 'cslfw_google_api_key'
wp option delete 'bootstrap_enalble'
wp option delete 'cslfw_map_size'
wp option delete 'cslfw_custom_map_size'
wp option delete 'disable_order_status'
wp option delete 'mailchimp_auto_subscribe'

# Delete Transients
wp transient delete 'cslfw_print_label'
wp transient delete 'cslfw_bulk_shipment_print'
wp transient delete 'cslfw_bulk_shipment_print_process'
wp transient delete 'cslfw_bulk_shipment_process'
wp transient delete 'bulk_shipment_create'
wp transient delete 'bulk_shipment_print'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_shipping_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_shipping_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_shipping_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_shipping_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cslfw_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cslfw_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cslfw_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cslfw_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'drivername%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'drivername%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'drivername%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'drivername%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'lineNumber%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'lineNumber%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'lineNumber%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lineNumber%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'customerCode%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'customerCode%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'customerCode%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'customerCode%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_status_cargo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_status_cargo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_status_cargo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_status_cargo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_status_cargo_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_status_cargo_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_status_cargo_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_status_cargo_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_DistributionPointID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_DistributionPointID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_DistributionPointID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_DistributionPointID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_DistributionPointName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_DistributionPointName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_DistributionPointName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_DistributionPointName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_StreetName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_StreetName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_StreetName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_StreetName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_StreetNum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_StreetNum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_StreetNum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_StreetNum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_cargoPhone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_cargoPhone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_cargoPhone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_cargoPhone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_Comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_Comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_Comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_Comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargoPhone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargoPhone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargoPhone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargoPhone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_Latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_Latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_Latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_Latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_Longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_Longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_Longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_Longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lineNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lineNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lineNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lineNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drivername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drivername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drivername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drivername'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customerCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customerCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customerCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customerCode'"
