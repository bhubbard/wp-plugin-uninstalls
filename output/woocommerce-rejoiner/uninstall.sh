#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rjcart_%' OR option_name LIKE '_site_transient_rjcart_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rejoiner_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rejoiner_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rejoiner_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rejoiner_subscribe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rejoiner_unsubscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rejoiner_unsubscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rejoiner_unsubscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rejoiner_unsubscribe'"
