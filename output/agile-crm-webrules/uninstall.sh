#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webrules_agile_domain'
wp option delete 'webrules_agile_email'
wp option delete 'webrules_agile_rest_api'
wp option delete 'webrules_agile_password'
wp option delete 'webrules_agile_webstats'
wp option delete 'webrules_agile_webrules'
wp option delete 'webrules_agile_js_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webrules_landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webrules_landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webrules_landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webrules_landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webrules_enable_webrule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webrules_enable_webrule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webrules_enable_webrule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webrules_enable_webrule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webrules_enable_webstats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webrules_enable_webstats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webrules_enable_webstats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webrules_enable_webstats'"
