#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dirtysuds_export_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_print_headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_print_headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_print_headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_print_headline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sub_head'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sub_head'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sub_head'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sub_head'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_production_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_production_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_production_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_production_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'story_captions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'story_captions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'story_captions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'story_captions'"
