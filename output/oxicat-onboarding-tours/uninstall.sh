#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oot_completed_tours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oot_completed_tours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oot_completed_tours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oot_completed_tours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oot_last_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oot_last_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oot_last_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oot_last_tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oot_last_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oot_last_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oot_last_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oot_last_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tour_steps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tour_steps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tour_steps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tour_steps'"
