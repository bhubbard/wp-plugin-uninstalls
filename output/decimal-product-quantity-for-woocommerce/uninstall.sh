#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woodecimalproduct_storage_type'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woodecimalproduct_max_qnt_default'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woodecimalproduct_debug_log'
wp option delete 'woodecimalproduct_auto_correction_qnt'
wp option delete 'woodecimalproduct_buttonspm_product_enable'
wp option delete 'woodecimalproduct_ajax_cart_update'
wp option delete 'woodecimalproduct_buttonspm_cart_enable'
wp option delete 'woodecimalproduct_price_unit_label'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woodecimalproduct_admin_notice'
wp option delete 'woodecimalproduct_min_qnt_default'
wp option delete 'woodecimalproduct_step_qnt_default'
wp option delete 'woodecimalproduct_item_qnt_default'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woodecimalproduct_uninstall_del_metadata'
wp option delete 'woodecimalproduct_updated_poductmeta'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_term_price_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_term_price_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_term_price_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_term_price_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_term_min_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_term_min_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_term_min_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_term_min_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_term_max_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_term_max_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_term_max_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_term_max_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_term_step_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_term_step_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_term_step_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_term_step_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_term_item_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_term_item_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_term_item_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_term_item_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_min_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_min_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_min_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_min_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_max_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_max_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_max_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_max_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_item_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_item_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_item_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_item_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_step_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_step_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_step_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_step_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_price_unit_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_price_unit_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_price_unit_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_price_unit_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woodecimalproduct_price_unit_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woodecimalproduct_price_unit_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woodecimalproduct_price_unit_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woodecimalproduct_price_unit_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdpq_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdpq_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdpq_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdpq_cart'"
