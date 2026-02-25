#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcss_options'
wp option delete 'wcss_enable_shipping_dropdown'
wp option delete 'wcss_eta_map'
wp option delete 'wcss_pro_options'
wp option delete 'wcss_license_key'
wp option delete 'wcss_license_status'
wp option delete 'wcss_license_activated_on'
wp option delete 'wcss_license_response'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'

# Clear Cron Jobs
wp cron event delete 'wcss_license_cron_check'

