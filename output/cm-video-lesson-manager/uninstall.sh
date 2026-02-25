#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'cmvlf_refresh_404_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmvl_mp_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmvl_mp_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmvl_mp_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmvl_mp_subscription'"
