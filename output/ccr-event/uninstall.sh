#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccr_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccr_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccr_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccr_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccr_event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccr_event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccr_event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccr_event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccr_event_gate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccr_event_gate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccr_event_gate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccr_event_gate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccr_event_register_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccr_event_register_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccr_event_register_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccr_event_register_link'"
