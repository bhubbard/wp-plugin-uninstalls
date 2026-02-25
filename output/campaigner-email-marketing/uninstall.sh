#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'campemma_auth_status'
wp option delete 'campemma_back_in_stock_button_type'
wp option delete 'campemma_back_in_stock_is_activate'
wp option delete 'campemma_account_id'
wp option delete 'campemma_consumer_key'
wp option delete 'campemma_consumer_secret'
wp option delete 'woocommerce_manage_stock'
wp option delete 'campemma_notify_me_title'
wp option delete 'campemma_notify_me_placeholder'
wp option delete 'campemma_notify_me_button_label'
wp option delete 'campemma_notify_me_button_color'
wp option delete 'campemma_notify_me_button_text_color'
wp option delete 'campemma_account_connected'
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'campemma_preferences'
wp option delete 'campemma_username'
wp option delete 'campemma_password'
wp option delete 'campemma_cmp_user_jwt'
wp option delete 'campemma_accounts_data'
wp option delete 'campemma_user_type'
wp option delete 'campemma_store_id'
wp option delete 'campemma_store_name'
wp option delete 'campemma_account_name'

# Delete Transients
wp transient delete 'campemma_auth_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_campemma_wc_auth_state_%' OR option_name LIKE '_site_transient_campemma_wc_auth_state_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_previous_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_previous_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_previous_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_previous_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_previous_stock_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_previous_stock_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_previous_stock_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_previous_stock_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-settings'"
