#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wetail_shipping_api_key'
wp option delete 'wetail_shipping_manual_order_validation'
wp option delete 'wetail_shipping_ignore_product_dimension_if_not_given'
wp option delete 'wetail_shipping_create_labels'
wp option delete 'wetail_shipping_book_pickup_manually'
wp option delete 'wetail_shipping_has_multiple_senders'
wp option delete 'wetail_shipping_enable_manual_shipping_service_selection_override'
wp option delete 'wetail_shipping_print_pdfs_on_status'
wp option delete 'wetail_shipping_returns_url'
wp option delete 'wetail_shipping_return_carrier_service'
wp option delete 'wetail_shipping_wse_to_wetail_shipping_options_migrated'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wetail_shipping_template_weight'

# Clear Cron Jobs
wp cron event delete 'wc_order_status_set_sync_cb_hook'

