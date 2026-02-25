#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apprl_version'
wp option delete 'apprl_activation_date'
wp option delete 'apprl_cron_running'
wp option delete 'apprl_token'
wp option delete 'apprl_error'
wp option delete 'apprl__auto_transform'
wp option delete 'apprl__auto_span'
wp option delete 'apprl__auto_transform_optout'

# Clear Cron Jobs
wp cron event delete 'apprl_reprocess_auto_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apprl__auto_transform_optout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apprl__auto_transform_optout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apprl__auto_transform_optout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apprl__auto_transform_optout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apprl__links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apprl__links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apprl__links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apprl__links'"
