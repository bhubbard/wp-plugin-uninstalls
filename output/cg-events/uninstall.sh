#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cg_events_shortcode_custom_css_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cg_event_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cg_event_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cg_event_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cg_event_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cg_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cg_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cg_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cg_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cg_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cg_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cg_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cg_event_end_date'"
