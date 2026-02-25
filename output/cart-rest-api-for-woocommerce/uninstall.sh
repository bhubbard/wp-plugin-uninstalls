#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cocart_version'
wp option delete 'cocart_install_date'
wp option delete 'cocart_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cocart_admin_notice_%'"
wp option delete 'cocart_plugin_suggestions'
wp option delete 'airplane-mode'
wp option delete 'auto_update_plugins'
wp option delete 'cocart_schema_missing_tables'
wp option delete 'active_sitewide_plugins'
wp option delete 'cocart_db_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp option delete 'advanced_shipping_packages_default_package_name'

# Delete Transients
wp transient delete 'cocart_setup_wizard_store_new'
wp transient delete '_cocart_db_creation_failed'
wp transient delete '_cocart_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cocart_plugin_data_%' OR option_name LIKE '_site_transient_cocart_plugin_data_%'"
wp transient delete 'cocart_plugin_data'
wp transient delete 'cocart_installing'

# Clear Cron Jobs
wp cron event delete 'woocommerce_cleanup_sessions'
wp cron event delete 'cocart_cleanup_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_cocart_base_tables_missing_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_cocart_base_tables_missing_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_cocart_base_tables_missing_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_cocart_base_tables_missing_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_cocart_update_db_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_cocart_update_db_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_cocart_update_db_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_cocart_update_db_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_name'"
