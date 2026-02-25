#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hms_mc_importer'

# Clear Cron Jobs
wp cron event delete 'hms_mc_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_url'"
