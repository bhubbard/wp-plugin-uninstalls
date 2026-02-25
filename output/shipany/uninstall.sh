#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_shipany_service_locations_forbidden'
wp option delete 'woocommerce_shipany_ecs_asia_settings'
wp option delete 'order_list_counter'
wp option delete '_shipany_bulk_action_confirmation'
wp option delete 'shipany_permalinks_flushed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shipany_handover_order_ids_%'"
wp option delete 'shipany-selected-locationtype'
wp option delete 'shipany-selected-locationID'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__shipany_bulk_download_labels_file_%' OR option_name LIKE '_site_transient__shipany_bulk_download_labels_file_%'"
wp transient delete '_shipany_auth_token_rest'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_shipment_shipany_label_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_shipment_shipany_label_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_shipment_shipany_label_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_shipment_shipany_label_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipany_export_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipany_export_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipany_export_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipany_export_description'"
