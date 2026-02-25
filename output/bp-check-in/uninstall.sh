#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp-check-in'
wp option delete 'bpchk-support'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete '_bpchk_is_new_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpchk_fav_places'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpchk_fav_places'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpchk_fav_places'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpchk_fav_places'"
