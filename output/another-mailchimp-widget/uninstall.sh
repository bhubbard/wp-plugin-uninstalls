#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account_subscribe_lists'"

# Delete Transients
wp transient delete 'mp-am-last-action-data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_error_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_error_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_error_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_error_notice'"
