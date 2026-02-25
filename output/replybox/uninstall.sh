#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'replybox'

# Delete Transients
wp transient delete '_replybox_welcome_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'replybox_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'replybox_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'replybox_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'replybox_id'"
