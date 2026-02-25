#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_version'"
wp option delete '_stellarpay_delete_all_data_on_delete'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'stellarpay_opt_in_stripe_account_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%persisted_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%persisted_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%persisted_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%persisted_preferences'"
