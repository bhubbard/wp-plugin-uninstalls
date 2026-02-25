#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mp3_vplayer_post_types'

# Delete Transients
wp transient delete 'mp3_vplayer_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp3_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp3_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp3_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp3_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp3_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp3_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp3_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp3_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp3_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp3_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp3_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp3_author'"
