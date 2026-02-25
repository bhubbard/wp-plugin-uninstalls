#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adobe_analytics_library_url'
wp option delete 'adobe_analytics_account_id'
wp option delete 'adobe_analytics_custom_js'
wp option delete 'adobe_analytics_custom_variables'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adobe_analytics_repeatable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adobe_analytics_repeatable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adobe_analytics_repeatable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adobe_analytics_repeatable'"
