#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sml_theme_support_styles'
wp option delete 'sml_theme_support_content'
wp option delete 'sml_terms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pdf_thumbnail_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pdf_thumbnail_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pdf_thumbnail_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pdf_thumbnail_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'score-attachment-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'score-attachment-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'score-attachment-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'score-attachment-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parts-attachment-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parts-attachment-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parts-attachment-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parts-attachment-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio-attachment-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio-attachment-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio-attachment-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio-attachment-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piece-video-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piece-video-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piece-video-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piece-video-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no-download-message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no-download-message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no-download-message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no-download-message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-audio'"
