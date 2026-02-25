#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asnp_easy_sale_badge_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_added'"
wp option delete 'asnp_wesb_db_version'

# Delete Transients
wp transient delete 'asnp_wesb_installing'

