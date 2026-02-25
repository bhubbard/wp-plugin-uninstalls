#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcwlc-auto-logo'
wp option delete 'fcwlc-auto-logo-link'
wp option delete 'fcwlc-auto-logo-title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fcwlc_activation_message_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fcwlc_activation_message_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fcwlc_activation_message_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fcwlc_activation_message_dismissed'"
