#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agile_domain'
wp option delete 'agile_email'
wp option delete 'agile_rest_api'
wp option delete 'agile_password'
wp option delete 'agile_webstats'
wp option delete 'agile_webrules'
wp option delete 'agile_js_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_webrule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_webrule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_webrule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_webrule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_webstats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_webstats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_webstats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_webstats'"
