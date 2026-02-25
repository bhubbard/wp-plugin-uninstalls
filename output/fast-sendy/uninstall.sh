#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmsendyurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmsendyurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmsendyurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmsendyurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fmsendlistid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fmsendlistid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fmsendlistid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fmsendlistid'"
