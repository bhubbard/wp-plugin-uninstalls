#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dvsfw_shipos_token'
wp option delete 'dvsfw_getpackage_license'
wp option delete 'wc-shipos-delivery'
wp option delete 'dvsfw_order_comment_field_key'
wp option delete 'dvsfw_use_order_notes'
wp option delete 'dvsfw_phone_no_field_key'
wp option delete 'dvsfw_house_no_field_key'
wp option delete 'dvsfw_apartment_field_key'
wp option delete 'dvsfw_floor_field_key'
wp option delete 'dvsfw_entrance_field_key'
wp option delete 'dvsfw_google_maps_api_key'
wp option delete 'dvsfw_is_pickup	'
wp option delete 'dvsfw_dev_mode'
wp option delete 'dvsfw_auto_update_order_status_on_shipment_delivered'
wp option delete 'dvsfw_auto_update_order_status_on_shipment_delivered_source'
wp option delete 'dvsfw_auto_update_order_status_on_shipment_delivered_target'
wp option delete 'dvsfw_shipping_method_status_mappings'
wp option delete 'dvsfw_license_key'
wp option delete 'dvsfw_is_pickup'
wp option delete 'dvsfw_pickup_point_display_preference'
wp option delete 'dvsfw_pickup_point_default_display'
wp option delete 'dvsfw_automatic'
wp option delete 'dvsfw_getpackage_enable'
wp option delete 'dvsfw_zigzag_enable_express_delivery'
wp option delete 'dvsfw_zigzag_license'
wp option delete 'dvsfw_free_shipping_by_price'
wp option delete 'dvsfw_automatic_status'
wp option delete 'dvsfw_woltdrive_enable'
wp option delete 'dvsfw_woltDrive_license'
wp option delete 'dvsfw_install_date'

# Delete Transients
wp transient delete 'DVSFW_GET_LICENSES'
wp transient delete 'DVSFW_HAS_LICENSE'
wp transient delete 'dvsfw_cache_cleared_notice'

# Clear Cron Jobs
wp cron event delete 'dvsfw_get_location_daily'

