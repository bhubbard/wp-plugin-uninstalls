#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maxbuttons_usecssfile'
wp option delete 'mbsocial_network_settings'

# Delete Transients
wp transient delete 'mbsocial-social-networks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbsocial_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbsocial_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbsocial_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbsocial_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbsocial_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbsocial_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbsocial_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbsocial_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
