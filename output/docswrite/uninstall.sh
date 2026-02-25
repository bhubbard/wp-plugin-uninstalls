#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'docswrite_first_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
