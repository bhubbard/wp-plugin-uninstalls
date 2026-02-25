#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'est_delvry_date'
wp option delete 'est_delvry_date_all_pro'
wp option delete 'est_dispatch_date_all_pro'
wp option delete 'est_delvry_days'
wp option delete 'est_date_display_single_pro'
wp option delete 'delvry_text_position_sinpro'
wp option delete 'single_pro_display_opt'
wp option delete 'single_pro_delivry_text_bg'
wp option delete 'single_pro_delivry_text_color'
wp option delete 'single_pro_order_icon'
wp option delete 'single_pro_shipping_icon'
wp option delete 'single_pro_delivery_icon'
wp option delete 'single_pro_delivry_widget_bg'
wp option delete 'single_pro_delivry_widget_color'
wp option delete 'single_pro_delivry_widget_border_color'
wp option delete 'est_display_on_cartpage'
wp option delete 'est_display_on_orderpage'
wp option delete 'hide_outofstock_product'
wp option delete 'hide_product_backorder'
wp option delete 'single_pro_delivery_text'
wp option delete 'single_pro_shipping_text'
wp option delete 'single_pro_order_text'
wp option delete 'delvry_text_cart_checkout'
wp option delete 'delvry_text_pro_page'
wp option delete 'delvry_text_out_of_stock'
wp option delete 'delvry_text_cart_checkout_key'
wp option delete 'delvry_text_order_key'
wp option delete 'delvry_text_order_page'
wp option delete 'delvry_date_format'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%edwerror' OR option_name LIKE '_site_transient_%edwerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'est_date_delivry_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'est_date_delivry_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'est_date_delivry_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'est_date_delivry_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delvry_time_outstock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delvry_time_outstock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delvry_time_outstock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delvry_time_outstock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delvry_time_backorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delvry_time_backorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delvry_time_backorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delvry_time_backorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'single_pro_est_delvry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'single_pro_est_delvry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'single_pro_est_delvry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'single_pro_est_delvry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'est_date_dispatch_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'est_date_dispatch_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'est_date_dispatch_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'est_date_dispatch_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'est_date_var_delivry_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'est_date_var_delivry_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'est_date_var_delivry_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'est_date_var_delivry_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'est_date_var_dispatch_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'est_date_var_dispatch_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'est_date_var_dispatch_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'est_date_var_dispatch_time'"
