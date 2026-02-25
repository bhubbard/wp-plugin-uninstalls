#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbec-posttypes'
wp option delete 'bbec-posttype'
wp option delete 'bbec-templates'
wp option delete 'bbec-edition-format'
wp option delete 'wp_admin_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bb_edition_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bb_edition_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bb_edition_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bb_edition_control'"
