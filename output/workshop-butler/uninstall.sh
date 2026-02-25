#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r_notice_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'redux-framework-tracking'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
