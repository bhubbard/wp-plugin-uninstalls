#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wizup_total_time_minutes'
wp option delete 'wizup_abandoned_cart_template_name'
wp option delete 'wizup_abandoned_cart_variables'
wp option delete 'wizup_access_token'
wp option delete 'wizup_templates'
wp option delete 'wizup_show_product_whatsapp_button'
wp option delete 'wizup_whatsapp_button_message_product'
wp option delete 'wizup_whatsapp_button_message_general'
wp option delete 'wizup_new_order_template_name'
wp option delete 'wizup_new_order_variables'
wp option delete 'wizup_delivered_order_template_name'
wp option delete 'wizup_delivered_order_variables'
wp option delete 'wizup_canceled_order_template_name'
wp option delete 'wizup_canceled_order_variables'
wp option delete 'new_order_template_name'
wp option delete 'new_order_variables'
wp option delete 'delivered_order_template_name'
wp option delete 'delivered_order_variables'
wp option delete 'canceled_order_template_name'
wp option delete 'canceled_order_variables'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template_name'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wizup_cart_activity_%' OR option_name LIKE '_site_transient_wizup_cart_activity_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wizup_abandoned_cart_notification_%' OR option_name LIKE '_site_transient_wizup_abandoned_cart_notification_%'"

# Clear Cron Jobs
wp cron event delete 'wizup_check_abandoned_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wizup_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wizup_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wizup_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wizup_active_tab'"
