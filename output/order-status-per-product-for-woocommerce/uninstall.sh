#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'osppfw_status_enable'
wp option delete 'osppfw_date_format'
wp option delete 'osppfw_stdis_format'
wp option delete 'osppfw_statuses'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%OSPPFWerror' OR option_name LIKE '_site_transient_%OSPPFWerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_status_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_status_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_status_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_status_date'"
