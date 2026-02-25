#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'iwrasl_first_order_date'
wp option delete 'iwrasl_top_toolbar_dismiss'
wp option delete 'iwrasl_some_setting'
wp option delete 'iwrasl_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent'"
wp option delete 'ithemeland_activation_email'
wp option delete 'iwrasl_onboarding'
wp option delete 'iwrasl_opt_in'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwrasl_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwrasl_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwrasl_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwrasl_permissions'"
