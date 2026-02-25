#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trackfree_shipment_status_in_orders'
wp option delete 'trackfree_account_api_key'
wp option delete 'trackfree_account_verify'
wp option delete 'trackfree_tracking_domain'
wp option delete 'trackfree_preferred_couriers'
wp option delete 'trackfree_hide_quick_start_info'
wp option delete 'trackfree_is_custom_track_url'
wp option delete 'trackfree_internal_email_link'
wp option delete 'trackfree_auto_order_status_update'
wp option delete 'trackfree_track_page_id'
wp option delete 'trackfree_display_options'
wp option delete 'trackfree_trans_strings'
wp option delete 'trackfree_date_time_formats'
wp option delete 'trackfree_shipment_details_in_order_details'
wp option delete 'trackfree_show_intransit_badge'
wp option delete 'trackfree_translate_strings'
wp option delete 'trackfree_additional_texts'
wp option delete 'trackfree_custom_css_and_html'
wp option delete 'trackfree_option_name'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'trackfree_shipment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackfree_shipment_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackfree_shipment_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackfree_shipment_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackfree_shipment_details'"
