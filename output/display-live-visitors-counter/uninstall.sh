#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'whois_disp_users_online'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whois_disp_last_visit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whois_disp_last_visit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whois_disp_last_visit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whois_disp_last_visit'"
