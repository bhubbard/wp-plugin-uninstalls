#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brkpsc_%' OR option_name LIKE '_site_transient_brkpsc_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brkpsc_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brkpsc_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brkpsc_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brkpsc_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brkpsc_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brkpsc_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brkpsc_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brkpsc_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brkpsc_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brkpsc_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brkpsc_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brkpsc_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brkpsc_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brkpsc_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brkpsc_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brkpsc_max'"
