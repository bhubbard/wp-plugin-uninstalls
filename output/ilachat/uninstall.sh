#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ilachat_bot'
wp option delete 'ilachat_token'
wp option delete 'ilachat_widget_code'
wp option delete 'ilachat_widget_code_fast'
wp option delete 'ilachat_widget_code_optimize'
wp option delete 'ilachat_widget_display_mode'
wp option delete 'ilachat_iframe_url'
wp option delete 'ilachat_enable_show_widget'
wp option delete 'ilachat_enable_lead_collection'
wp option delete 'ilachat_last_updated'
wp option delete 'ilachat_woocommerce_integration_enabled'
wp option delete 'ilachat_woocommerce_order_tracking_enabled'
wp option delete 'ilachat_woocommerce_order_check_phone_enabled'
wp option delete 'ilachat_woocommerce_order_check_email_enabled'
wp option delete 'ilachat_woocommerce_sync_categories'
wp option delete 'ilachat_woocommerce_order_allowed_data'
wp option delete 'ilachat_woocommerce_order_statuses_description'
wp option delete 'ilachat_woocommerce_order_special_note'
wp option delete 'ilachat_woocommerce_sync_out_of_stock'
wp option delete 'ilachat_woocommerce_product_sync_enabled'
wp option delete 'ilachat_woocommerce_secret_key'

# Delete Transients
wp transient delete 'ilachat_connect_clicked'
wp transient delete 'ilachat_sync_variable_links_scheduled'
wp transient delete 'ilachat_product_limit_reached'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilachat_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilachat_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilachat_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilachat_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilachat_deleted_due_to_oos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilachat_deleted_due_to_oos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilachat_deleted_due_to_oos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilachat_deleted_due_to_oos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilachat_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilachat_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilachat_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilachat_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilachat_sync_on_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilachat_sync_on_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilachat_sync_on_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilachat_sync_on_save'"
