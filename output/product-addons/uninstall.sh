#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'prad_option_assign_all'
wp option delete 'prad_product_image_update_data'
wp option delete 'prad_custom_fonts'
wp option delete 'prad_addons_default_option_created'
wp option delete 'edd_prad_license_key'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_currency_pos'
wp option delete 'edd_prad_license_data'
wp option delete 'prad_settings'
wp option delete 'woocommerce_currency'
wp option delete 'prad_global_style_css'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'prad_global_style'

# Delete Transients
wp transient delete 'durbin_country_code'

# Clear Cron Jobs
wp cron event delete 'prad_cleanup_upload_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prad_product_assigned_meta_inc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prad_product_assigned_meta_inc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prad_product_assigned_meta_inc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prad_product_assigned_meta_inc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prad_product_assigned_meta_exc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prad_product_assigned_meta_exc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prad_product_assigned_meta_exc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prad_product_assigned_meta_exc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prad_term_assigned_meta_inc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prad_term_assigned_meta_inc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prad_term_assigned_meta_inc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prad_term_assigned_meta_inc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prad_addons_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prad_addons_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prad_addons_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prad_addons_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prad_base_assigned_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prad_base_assigned_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prad_base_assigned_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prad_base_assigned_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prad_addons_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prad_addons_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prad_addons_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prad_addons_css'"
