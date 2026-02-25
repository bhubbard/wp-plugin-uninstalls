#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bw_tides_desc_%' OR option_name LIKE '_site_transient_bw_tides_desc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bw_tides_title_%' OR option_name LIKE '_site_transient_bw_tides_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bw_tides_link_%' OR option_name LIKE '_site_transient_bw_tides_link_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bw_image_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bw_image_link'"
