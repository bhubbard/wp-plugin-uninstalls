#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'portfolio_tags_settings'
wp option delete 'portfolio_images_settings'
wp option delete 'portfolio_layout_settings'
wp option delete 'portfolio_encrypt_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'portfolio_post_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'portfolio_post_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'portfolio_post_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'portfolio_post_meta'"
