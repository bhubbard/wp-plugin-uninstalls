#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'profitblue_cogs_tables_created'
wp option delete 'profitblue_cogs_period_created'
wp option delete 'profitblue_notifications-settings'
wp option delete 'profitblue-use-this-payment-period'
wp option delete 'profitblue-use-this-shipping-period'
wp option delete 'profitblue-use-this-shop-setting-period'
wp option delete 'profitblue_shipping_orders_buffer'
wp option delete 'profitblue_batch'
wp option delete 'profitblue_instalation_finish'
wp option delete 'profitblue_licence_response'
wp option delete 'profitblue_licence_status'
wp option delete 'profitblue_licence_key'
wp option delete 'profitblue_pnl_cache'
wp option delete 'profitblue_install_step'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'profitblue_daily_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'profitblue_weekly_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'profitblue_monthly_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'profitblue_yearly_%'"
wp option delete 'woocommerce_price_num_decimals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_orders_buffer'"
wp option delete 'profitblue-notifications-settings'
wp option delete 'profitblue_payment_orders_buffer'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'profitblue_free_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profitblue_wizard_current_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profitblue_wizard_current_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profitblue_wizard_current_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profitblue_wizard_current_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cogs_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cogs_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cogs_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cogs_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profitblue_is_wizard_finish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profitblue_is_wizard_finish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profitblue_is_wizard_finish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profitblue_is_wizard_finish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_profitblue_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_profitblue_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_profitblue_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_profitblue_import'"
