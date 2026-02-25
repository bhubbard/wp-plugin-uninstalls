#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iat_alt_text_count'
wp option delete 'iat_review_reminder'
wp option delete 'iat_do_not_show_again'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
