#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'uhs_snippet-%'"
wp option delete 'opencabs_options'
wp option delete 'uhs_snippet_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][format]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][language]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][google_north]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][google_south]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][google_east]'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][google_west]'"
wp option delete 'uhs_quote_snippet_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%][snippet_redirect_url]'"
wp option delete 'uhs_login_snippet_list'

