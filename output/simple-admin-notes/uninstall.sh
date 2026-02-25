#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_placement_above'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_placement_above'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_placement_above'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_placement_above'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_placement_below'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_placement_below'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_placement_below'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_placement_below'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_placement_yes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_placement_yes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_placement_yes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_placement_yes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_ids'"
