#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ga_id'
wp option delete 'woocommerce_ga_support_display_advertising'
wp option delete 'woocommerce_ga_ecommerce_tracking_enabled'
wp option delete 'woocommerce_google_analytics_pro_notice_shown'

