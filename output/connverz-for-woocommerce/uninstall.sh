#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'cwep_total_time_minutes'
wp option delete 'connv_abandoned_cart_template_name'
wp option delete 'connv_abandoned_cart_variables'
wp option delete 'cwep_access_token'
wp option delete 'cwep_templates'
wp option delete 'connverz_show_product_whatsapp_button'
wp option delete 'cwep_whatsapp_button_message_product'
wp option delete 'cwep_whatsapp_button_message_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_variables'"
wp option delete 'connv_new_order_template_name'
wp option delete 'connv_new_order_variables'
wp option delete 'connv_delivered_order_template_name'
wp option delete 'connv_delivered_order_variables'
wp option delete 'connv_canceled_order_template_name'
wp option delete 'connv_canceled_order_variables'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_connverz_cart_activity_%' OR option_name LIKE '_site_transient_connverz_cart_activity_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_connverz_abandoned_cart_notification_%' OR option_name LIKE '_site_transient_connverz_abandoned_cart_notification_%'"

# Clear Cron Jobs
wp cron event delete 'connverz_check_abandoned_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_whatsapp_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'connverz_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'connverz_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'connverz_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'connverz_active_tab'"
