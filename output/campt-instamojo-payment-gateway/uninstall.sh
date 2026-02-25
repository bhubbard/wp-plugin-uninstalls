#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_ticket_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_ticket_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_ticket_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_ticket_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_questions'"
