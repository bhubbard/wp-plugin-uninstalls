#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ach_processing_settings'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'testing_again_two'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_achp_payment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_achp_payment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_achp_payment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_achp_payment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_achp_account_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_achp_account_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_achp_account_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_achp_account_type'"
