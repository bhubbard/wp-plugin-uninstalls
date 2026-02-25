#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixobe_colorgizer_site_id'
wp option delete 'pixobe_coloring_expiry'
wp option delete 'pixobe_coloring_nonce'
wp option delete 'pixobe_colorgizer_plan'
wp option delete 'pixobe_colorgizer_message'
wp option delete 'pixobe_coloring_book_checkboxes'
wp option delete 'pixobe_coloring_book_colors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pixobe_coloring_meta_initialized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pixobe_coloring_meta_initialized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pixobe_coloring_meta_initialized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pixobe_coloring_meta_initialized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pixobe_coloring_colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pixobe_coloring_colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pixobe_coloring_colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pixobe_coloring_colors'"
