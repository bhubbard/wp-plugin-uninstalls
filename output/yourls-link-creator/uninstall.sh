#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yourls_api_test'
wp option delete 'yourls_options'

# Clear Cron Jobs
wp cron event delete 'yourls_cron'
wp cron event delete 'yourls_test'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yourls_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yourls_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yourls_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yourls_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yourls_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yourls_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yourls_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yourls_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yourls_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yourls_shorturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yourls_shorturl'"
