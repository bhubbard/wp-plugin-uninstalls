#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sofcar_token'
wp option delete 'sofcar_auth'
wp option delete 'sofcar_locale'
wp option delete 'sofcar_view_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
