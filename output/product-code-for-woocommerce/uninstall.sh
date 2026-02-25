#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_code_db_updated'
wp option delete 'product_code_second_show'
wp option delete 'product_code_text'
wp option delete 'product_code_text_second'
wp option delete 'product_code_quik_edit_text'
wp option delete 'product_code_quik_edit_text_second'
wp option delete 'product_code_hide_empty_field'
wp option delete 'pcfw_hide_wc_gtin_field'
wp option delete 'product_code'
wp option delete 'product_code_second'
wp option delete 'pcfw_hide_from_customer_orders'
wp option delete 'pcfw_structure_data'
wp option delete 'pcfw_structured_data_field'
wp option delete 'hide_product_code_on_user_side'
wp option delete 'hide_second_product_code_on_user_side'
wp option delete 'product_code_for_admin'
wp option delete 'pcfw_delete_data_on_uninstall'
wp option delete 'product_code_update'
wp option delete 'product_code_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcfw_notice_clicked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcfw_notice_clicked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcfw_notice_clicked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcfw_notice_clicked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pcfw_notice_last_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pcfw_notice_last_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pcfw_notice_last_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pcfw_notice_last_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_code_second'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_code_second'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_code_second'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_code_second'"
