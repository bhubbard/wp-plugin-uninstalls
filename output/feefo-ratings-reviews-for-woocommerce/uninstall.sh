#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feefo_wc_wp_just_installed'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_version'
wp option delete 'feefo_wc_wp_stored_options'
wp option delete 'feefo_wc_wp_widget_options'
wp option delete 'feefo_service_reviews_widget'
wp option delete 'feefo_product_reviews_widget'
wp option delete 'feefo_product_widget_placement'
wp option delete 'feefo_disable_woocommerce_review_tab'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_review_rating_required'

