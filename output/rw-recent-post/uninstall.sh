#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_posted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_posted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_posted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_posted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwrptpost_type_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwrptpost_type_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwrptpost_type_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwrptpost_type_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_of_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_of_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_of_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_of_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poststyle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poststyle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poststyle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poststyle'"
