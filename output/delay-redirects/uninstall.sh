#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'delay_redirect_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'delay_redirect_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'delay_redirect_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'delay_redirect_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delay_redirect_delay-in-seconds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delay_redirect_delay-in-seconds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delay_redirect_delay-in-seconds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delay_redirect_delay-in-seconds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delay_redirect_destination-path-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delay_redirect_destination-path-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delay_redirect_destination-path-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delay_redirect_destination-path-url'"
