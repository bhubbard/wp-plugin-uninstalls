#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addons'"
wp option delete 'health-check-allowed-plugins'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'vtpos_inv_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vps_pm_%'"
wp option delete '_vt_ac'
wp option delete 'apps_bd_ups'
wp option delete 'vt_addons'
wp option delete 'vitepos-lite'
wp option delete '_vt_mu_skipped'
wp option delete '_vtp_ps_id'
wp option delete 'vtpos_stock_setting'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"
wp transient delete 'viteposactivate'

# Clear Cron Jobs
wp cron event delete 'vitepos/action/check-addon-list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'outlet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'outlet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'outlet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'outlet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vt_prev_purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vt_prev_purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vt_prev_purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vt_prev_purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vt_purchase_price_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vt_purchase_price_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vt_purchase_price_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vt_purchase_price_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtp_outlet_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtp_outlet_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtp_outlet_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtp_outlet_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'force_pw_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'force_pw_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'force_pw_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'force_pw_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtpos_user_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtpos_user_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtpos_user_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtpos_user_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'added_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'added_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'added_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'added_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vt_stock_cal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vt_stock_cal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vt_stock_cal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vt_stock_cal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_vitepos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_vitepos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_vitepos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_vitepos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vt_stock_reverse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vt_stock_reverse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vt_stock_reverse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vt_stock_reverse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vtp_payment_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vtp_payment_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vtp_payment_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vtp_payment_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vt_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vt_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vt_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vt_barcode'"
