#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OIB tvrtke'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OIB tvrtke'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OIB tvrtke'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OIB tvrtke'"
