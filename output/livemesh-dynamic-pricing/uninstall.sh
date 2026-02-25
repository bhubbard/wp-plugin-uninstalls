#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'enable_livemesh_dynamic_pricing'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'ldp_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ldp_dynamic_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ldp_dynamic_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ldp_dynamic_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ldp_dynamic_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricing_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricing_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricing_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricing_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pricing_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pricing_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pricing_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pricing_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dynamic_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dynamic_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dynamic_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dynamic_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
