#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'datalogics_token'
wp option delete 'datalogics_shipping_auto_create_delivery'
wp option delete 'datalogics_shipping_order_status'
wp option delete 'datalogics_shipping_method'
wp option delete 'datalogics_shipping_locations'
wp option delete 'datalogics_platforms'
wp option delete 'datalogics_myaccount_tracking_email'
wp option delete 'datalogics_myaccount_tracking'
wp option delete 'datalogics_shipping_options_enabled'
wp option delete 'datalogics_shipping_options'
wp option delete 'datalogics_view_option'
wp option delete 'datalogics_google_key'
wp option delete 'datalogics_cities_auto'
wp option delete 'datalogics_ncode_auto'
wp option delete 'shipping_push_supplier'
wp option delete 'datalogics_myaccount_tracking_email_link'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'datalogics_update_locations_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datalogics_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datalogics_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datalogics_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datalogics_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datalogics_shipment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datalogics_shipment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datalogics_shipment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datalogics_shipment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datalogics_n_code_platform_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datalogics_n_code_platform_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datalogics_n_code_platform_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datalogics_n_code_platform_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datalogics_n_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datalogics_n_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datalogics_n_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datalogics_n_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datalogics_shipping_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datalogics_shipping_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datalogics_shipping_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datalogics_shipping_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datalogics_test_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datalogics_test_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datalogics_test_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datalogics_test_one'"
