#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgda_total_orders'
wp option delete 'sg_doa_orders_auto_cancel'
wp option delete 'sg_doa_orders_auto_cancel_duration'
wp option delete 'sg_doa_orders_auto_cancel_duration_mode'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'sgits_doa_cancel_unpaid_orders_action_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
