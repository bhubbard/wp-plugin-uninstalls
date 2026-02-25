#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alobaidi_gallery_home'
wp option delete 'alobaidi_gallery_page'
wp option delete 'alobaidi_gallery_count'
wp option delete 'alobaidi_gallery_filter'
wp option delete 'alobaidi_gallery_sitename'
wp option delete 'alobaidi_gallery_tagline'
wp option delete 'alobaidi_gallery_facebook'
wp option delete 'alobaidi_gallery_twitter'
wp option delete 'alobaidi_gallery_instagram'
wp option delete 'alobaidi_gallery_favicon'
wp option delete 'alobaidi_gallery_bar'
wp option delete 'alobaidi_gallery_next'
wp option delete 'alobaidi_gallery_prev'
wp option delete 'alobaidi_gallery_setw'
wp option delete 'alobaidi_gallery_medw'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
