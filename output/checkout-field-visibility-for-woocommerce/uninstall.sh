#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cron_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_shipping_fields_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_billing_fields_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%results_returned'"
wp option delete 'wcbilling_hide_fn'
wp option delete 'wcbilling_hide_zerototal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%billing_conditions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%billing_operator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%billing_condition_subfield'"
wp option delete 'woo_checkout_hide_shipping_fields_toggle'
wp option delete 'woo_checkout_hide_billing_fields_toggle'
wp option delete 'woo_checkout_api_get_response'
wp option delete 'wp_zamartz_admin_event_tracker'
wp option delete 'zamartz_api_admin_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_product_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_purchase_emails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_get_response'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_admin_notice_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%network_admin_api_status'"
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'zamartz_api_cron_schedule_twice_monthly'

