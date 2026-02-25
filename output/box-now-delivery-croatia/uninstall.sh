#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boxnow_button_color'
wp option delete 'boxnow_button_text'
wp option delete 'boxnow_partner_id'
wp option delete 'embedded_iframe'
wp option delete 'box_now_display_mode'
wp option delete 'boxnow_locker_not_selected_message'
wp option delete 'boxnow_gps_tracking'
wp option delete 'boxnow_api_url'
wp option delete 'boxnow_client_id'
wp option delete 'boxnow_client_secret'
wp option delete 'boxnow_warehouse_id'
wp option delete 'boxnow_voucher_option'
wp option delete 'boxnow_voucher_email'
wp option delete 'boxnow_allow_returns'
wp option delete 'boxnow_mobile_number'
wp option delete 'boxnow-save-data-addressline1'
wp option delete 'boxnow-save-data-postalcode'
wp option delete 'boxnow-save-data-addressline2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_boxnow_parcel_order_id_%'"
wp option delete 'boxnow_thankyou_page'

# Delete Transients
wp transient delete '_manual_status_change'

