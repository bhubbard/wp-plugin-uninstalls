#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PACKLINK_VERSION'
wp option delete 'active_sitewide_plugins'
wp option delete 'links_updated_date_format'
wp option delete 'PACKLINK_DATABASE_VERSION'
wp option delete 'wc_settings_tab_packlink_api_key'

# Delete Transients
wp transient delete 'packlink-pro-success-messages'
wp transient delete 'packlink-pro-error-messages'
wp transient delete 'packlink-pro-messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_draft_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_draft_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_draft_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_draft_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_shipment_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_shipment_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_shipment_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_shipment_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_shipment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_shipment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_shipment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_shipment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_shipment_status_update_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_shipment_status_update_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_shipment_status_update_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_shipment_status_update_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_carrier_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_carrier_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_carrier_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_carrier_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_carrier_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_carrier_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_carrier_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_carrier_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_shipment_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_shipment_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_shipment_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_shipment_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_shipment_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_shipment_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_shipment_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_shipment_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_label_printed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_label_printed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_label_printed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_label_printed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_drop_off_point_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_drop_off_point_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_drop_off_point_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_drop_off_point_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_packlink_send_draft_task_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_packlink_send_draft_task_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_packlink_send_draft_task_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_packlink_send_draft_task_id'"
