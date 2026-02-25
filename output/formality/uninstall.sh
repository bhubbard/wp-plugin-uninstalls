#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formality_templates'
wp option delete 'formality_welcome'
wp option delete 'formality_notice'
wp option delete 'formality_flush'
wp option delete 'formality_token'
wp option delete 'formality_version'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'formality_background_download_templates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formality_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formality_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formality_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formality_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formality_bg_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formality_bg_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formality_bg_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formality_bg_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formality_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formality_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formality_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formality_email'"
