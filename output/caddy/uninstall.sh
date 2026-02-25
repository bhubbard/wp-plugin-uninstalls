#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caddy_premium_edd_license_status'
wp option delete 'cc_dismiss_welcome_notice'
wp option delete 'cc_disable_branding'
wp option delete 'cc_affiliate_id'
wp option delete 'cc_menu_cart_widget'
wp option delete 'cc_menu_saves_widget'
wp option delete 'cc_free_shipping_amount'
wp option delete 'cc_free_shipping_tax'
wp option delete 'cc_shipping_country'
wp option delete 'cc_product_recommendation'
wp option delete 'cc_product_recommendation_type'
wp option delete 'cc_enable_sfl_options'
wp option delete 'cc_custom_css'
wp option delete 'caddy_install_date'
wp option delete 'caddy_version'
wp option delete 'cc_sfl_btn_on_product'
wp option delete 'cp_mobile_notices'
wp option delete 'cp_desktop_notices'
wp option delete 'woocommerce_tax_display_cart'

# Delete Transients
wp transient delete 'caddy_ann_license_status'
wp transient delete 'ga_tracking_license_status'
wp transient delete 'caddy_settings_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_dismiss_user_optin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_dismiss_user_optin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_dismiss_user_optin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_dismiss_user_optin_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_caddy_recommendations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_caddy_recommendations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_caddy_recommendations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_caddy_recommendations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_save_for_later_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_save_for_later_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_save_for_later_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_save_for_later_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
