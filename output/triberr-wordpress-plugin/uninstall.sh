#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'triberr_apikey'
wp option delete 'triberr_message'
wp option delete 'triberr_comments_width'
wp option delete 'triberr_comments_bg_color'
wp option delete 'triberr_comments_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_triberr_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_triberr_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_triberr_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_triberr_id'"
