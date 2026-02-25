#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_os_status_colors'
wp option delete 'wc_os_shipping_settings'
wp option delete 'wc_os_parcel_shipment'
wp option delete 'wc_os_shipping_platforms'
wp option delete 'wc_os_order_splitter_cron_clear'
wp option delete 'wc_os_order_splitter_cron'
wp option delete 'wc_os_general_settings'
wp option delete 'wos_update_status'
wp option delete 'wc_os_group_meta'
wp option delete 'wc_os_emails_to_admin'
wp option delete '_transient_wc_report_sales_by_date'
wp option delete 'wc_os_debug_logger'
wp option delete 'wc_os_debug_log'
wp option delete 'wc_os_logger'
wp option delete 'wc_os_email_log'
wp option delete 'wc_os_remove_order_log'
wp option delete 'wc_os_order_log'
wp option delete '_transient_wc_attribute_taxonomies'
wp option delete 'wos_pg_limit'
wp option delete 'wc_os_category_weekday'
wp option delete 'orddd_delivery_date_field_label'
wp option delete 'wc_os_status_setting'
wp option delete 'wc_os_acf_settings'
wp option delete 'wc_os_acf_group_selection'
wp option delete 'wc_os_partial_payment'
wp option delete 'wc_os_temp_task_performed'
wp option delete 'wc_os_meta_keys'
wp option delete 'wc_os_gf_meta_keys'
wp option delete 'wc_os_cron_settings'
wp option delete 'wc_os_io_options'
wp option delete 'wc_os_products_per_order'
wp option delete 'wc_os_settings'
wp option delete 'wc_os_customer_permission'
wp option delete 'wc_os_cuztomization'
wp option delete 'wc_os_cart_notices'
wp option delete 'wc_os_packages_strings'
wp option delete 'wc_os_child_email'
wp option delete 'wc_os_vendors_remaining'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'wc_os_ie_method_selection'
wp option delete 'wc_os_method_options'
wp option delete 'wc_os_coupon_option'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'wc_os_speed_optimization'
wp option delete 'wcfmmp_table_install'
wp option delete 'wc_os_ignore_cron_orders'
wp option delete 'current_theme'
wp option delete 'wc_os_gf_fields'
wp option delete 'wc_os_all_user_with_role'
wp option delete 'wc_os_vendor_role_selection'
wp option delete 'wc_os_settings_encoded'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wc_os_emails_to_resend_cron'
wp option delete 'new_admin_email'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'wc_os_product_cat_shipping_classes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_os_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_os_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_os_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_os_stock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_subtotal_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_group_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_group_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_group_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_group_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_os_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_os_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_os_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_os_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wos_force_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wos_force_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wos_force_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wos_force_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wos_backorder_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wos_backorder_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wos_backorder_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wos_backorder_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_os_vendor_role_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_os_vendor_role_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_os_vendor_role_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_os_vendor_role_selection'"
