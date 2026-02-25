#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'waba_chat_settings'
wp option delete 'waba_active_carts'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_waba_cart_%' OR option_name LIKE '_site_transient_waba_cart_%'"

# Clear Cron Jobs
wp cron event delete 'waba_chat_cart_recovery_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
