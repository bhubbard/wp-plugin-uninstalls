#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_exlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_exlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_exlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_exlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_lmlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_lmlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_lmlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_lmlink'"
