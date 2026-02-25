#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fr_refund_selected_post_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdesk_fr_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdesk_fr_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdesk_fr_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdesk_fr_note'"
