#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_contact_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_contact_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_contact_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_contact_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_contact_email'"
