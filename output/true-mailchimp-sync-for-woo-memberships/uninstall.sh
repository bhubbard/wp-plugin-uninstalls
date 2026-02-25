#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_mishmch_api_key'
wp option delete '_misha_mailchimp_lists_with_webhooks'
wp option delete '_mishmch_2optin'
wp option delete '_misha_mailchimp_scheduled_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_nointerests_for_%'"
wp option delete '_resync_in_process'
wp option delete '_misha_mailchimp_resync_users_offset'

# Delete Transients
wp transient delete 'mishmch_lists1'

# Clear Cron Jobs
wp cron event delete 'misha_cron_mailchimp_resync_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_misha_mailchimp_plan_statuses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_misha_mailchimp_plan_statuses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_misha_mailchimp_plan_statuses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_misha_mailchimp_plan_statuses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%approved'"
