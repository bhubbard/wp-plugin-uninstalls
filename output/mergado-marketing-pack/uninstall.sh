#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmp_plugin_ean_default_set'
wp option delete 'mmp_token'
wp option delete 'heureka-verify-opt-out-text-en_US'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'heureka-verify-opt-out-text-%'"
wp option delete 'feed-form-category'
wp option delete 'feed-form-customer'
wp option delete 'feed-form-stock'
wp option delete 'import-form-products'
wp option delete 'feed-form-products'
wp option delete 'top_glami-form-active-lang-CZ'
wp option delete 'glami_top_code-CZ'
wp option delete 'glami-selection-top'
wp option delete 'glami-form-top'
wp option delete 'm_feed_vat_option'
wp option delete 'mmp-wizard-finished-product'
wp option delete 'mmp-wizard-finished-stock'
wp option delete 'mmp-wizard-finished-category'
wp option delete 'mergado-feed-products-default-step'
wp option delete 'mergado-feed-category-default-step'
wp option delete 'mergado-feed-stock-default-step'
wp option delete 'mergado-feed-import-default-step'
wp option delete 'mmp-wp-product-feed-visibility-other--public'
wp option delete 'mmp-wc-product-feed-visibility-other--visible'
wp option delete 'mmp-wc-product-feed-visibility-other--catalog'
wp option delete 'mmp-wc-product-feed-visibility-other--search'
wp option delete 'mmp-wc-product-feed-visibility-other--hidden'
wp option delete 'mmp-wp-product-feed-visibility-product--public'
wp option delete 'mmp-wc-product-feed-visibility-product--visible'
wp option delete 'mmp-wc-product-feed-visibility-product--catalog'
wp option delete 'mmp-wc-product-feed-visibility-product--search'
wp option delete 'mmp-wc-product-feed-visibility-product--hidden'
wp option delete 'mergado_google_analytics_active'
wp option delete 'mergado_google_analytics_code'
wp option delete 'mergado_google_analytics_ecommerce'
wp option delete 'mergado_google_analytics_ecommerce_enhanced'
wp option delete 'gtagjs-vat-included'
wp option delete 'mmp-ga-ua-active'
wp option delete 'mmp-ga-ua-code'
wp option delete 'mmp-ga-ua-ecommerce'
wp option delete 'mmp-ga-ua-enhanced-ecommerce'
wp option delete 'mmp-ga-ua-vat-included'
wp option delete 'mergado_google_analytics_tracking'
wp option delete 'ga_refund_active'
wp option delete 'ga_refund_code'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-start'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-schedule'"

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'schedule_update_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
