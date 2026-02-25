#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_bio_links_nickname_color'
wp option delete 'wp_bio_links_link_bg_color'
wp option delete 'wp_bio_links_link_border_color'
wp option delete 'wp_bio_links_link_text_color'
wp option delete 'wp_bio_links_thumbnail'
wp option delete 'wp_bio_links_credits'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_bio_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_bio_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_bio_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_bio_links'"
