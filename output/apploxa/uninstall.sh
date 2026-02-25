#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apploxa_custom_interval'
wp option delete 'apploxa_abandoned_cart'
wp option delete 'apploxa_order_note_msg'
wp option delete 'apploxa_enable_otp'
wp option delete 'apploxa_otp_txt'
wp option delete 'apploxa_login_url'
wp option delete 'apploxa_token'
wp option delete 'apploxa_admin_whatsapp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apploxa_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apploxa_adm_%'"
wp option delete 'apploxa_adm_order_processing'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_apploxa_otp_%' OR option_name LIKE '_site_transient_apploxa_otp_%'"

# Clear Cron Jobs
wp cron event delete 'apploxa_check_abandoned_carts_event'
wp cron event delete 'apploxa_clear_abandoned_cart_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apploxa_whatsapp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apploxa_whatsapp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apploxa_whatsapp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apploxa_whatsapp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_timestamp'"
