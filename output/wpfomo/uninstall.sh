#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfomo_primary_text'
wp option delete 'wpfomo_secondary_text'
wp option delete 'wpfomo_link_text'
wp option delete 'wpfomo_image_url'
wp option delete 'wpfomo_image_url_src'
wp option delete 'wpfomo_url'
wp option delete 'wpfomo_user_template'
wp option delete 'wpfomo_show_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfomo_ignore_notice110'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfomo_ignore_notice110'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfomo_ignore_notice110'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfomo_ignore_notice110'"
