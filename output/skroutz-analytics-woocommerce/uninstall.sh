#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_skroutz_analytics_settings'
wp option delete 'widget_wc_skroutz_analytics_product_reviews_inline_widget'
wp option delete 'widget_wc_skroutz_analytics_product_reviews_extended_widget'

