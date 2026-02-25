#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miga_custom_posts'
wp option delete 'miga_custom_post_id'
wp option delete 'miga_custom_post_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
