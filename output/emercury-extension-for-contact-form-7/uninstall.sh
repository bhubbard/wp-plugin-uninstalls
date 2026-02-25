#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"
wp option delete 'eefcf7_emercury_db_issues_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eefcf7_emercury_%'"

