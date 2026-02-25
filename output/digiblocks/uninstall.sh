#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digiblocks_settings'
wp option delete 'digiblocks_fonts_data'
wp option delete 'digiblocks_activation_timestamp'
wp option delete 'digiblocks_review_notice_dismissed'
wp option delete 'digiblocks_inactive_blocks'

# Delete Transients
wp transient delete 'digiblocks_review_notice_dismissed_temporarily'
wp transient delete 'digiblocks_active_builders'
wp transient delete 'digiblocks_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
