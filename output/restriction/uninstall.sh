#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'restrictioncurrentversion'
wp option delete 'restrictiondisableallfeature'
wp option delete 'restrictionmoregisterpageurl'
wp option delete 'saved_open_page_url'
wp option delete 'restrictionenablepagelevelprotect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restc_restriction_access_to_this_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restc_restriction_access_to_this_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restc_restriction_access_to_this_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restc_restriction_access_to_this_page'"
