#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_agile_domain'
wp option delete 'newsletter_agile_email'
wp option delete 'newsletter_agile_rest_api'
wp option delete 'newsletter_agile_password'
wp option delete 'newsletter_agile_webstats'
wp option delete 'newsletter_agile_webrules'
wp option delete 'newsletter_agile_js_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newsletter_landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newsletter_landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newsletter_landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newsletter_landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newsletter_enable_webrule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newsletter_enable_webrule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newsletter_enable_webrule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newsletter_enable_webrule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newsletter_enable_webstats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newsletter_enable_webstats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newsletter_enable_webstats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newsletter_enable_webstats'"
