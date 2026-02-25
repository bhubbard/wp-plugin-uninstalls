#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MD_General'
wp option delete 'MD_PP1'
wp option delete 'MD_PP'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modal-dialog-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modal-dialog-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modal-dialog-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modal-dialog-id'"
