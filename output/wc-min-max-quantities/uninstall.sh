#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_min_max_quantities_installed'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'wc_min_max_quantities_install_date'
wp option delete 'wc_minmax_quantity_general_settings'
wp option delete 'wc_minmax_quantity_advanced_settings'
wp option delete 'wc_minmax_quantities_min_product_quantity'
wp option delete 'wc_minmax_quantities_max_product_quantity'
wp option delete 'wc_minmax_quantities_min_product_price'
wp option delete 'wc_minmax_quantities_max_product_price'
wp option delete 'wc_minmax_quantities_hide_checkout'
wp option delete 'wc_minmax_quantities_min_cart_total_price'
wp option delete 'wc_minmax_quantities_max_cart_total_price'
wp option delete 'wc_minmax_quantities_migrated_products'
wp option delete 'wc_min_max_quantities_settings'
wp option delete 'wcmmq_step'
wp option delete 'wcmmq_min_qty'
wp option delete 'wcmmq_max_qty'
wp option delete 'wcmmq_min_cart_qty'
wp option delete 'wcmmq_max_cart_qty'
wp option delete 'wcmmq_min_cart_total'
wp option delete 'wcmmq_max_cart_total'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_minmax_quantitiess_install_date'
wp option delete 'wc_min_max_quantities_version'

# Delete Transients
wp transient delete 'wc_min_max_quantities_activated'
wp transient delete 'wc_min_max_quantities_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmmq_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmmq_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmmq_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmmq_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmmq_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmmq_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmmq_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmmq_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmmq_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmmq_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmmq_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmmq_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmmq_min_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmmq_min_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmmq_min_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmmq_min_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmmq_max_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmmq_max_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmmq_max_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmmq_max_qty'"
