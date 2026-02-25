#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_quickview'"
wp option delete 'acoplw_detail_page_badge'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_trigger'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general'"

