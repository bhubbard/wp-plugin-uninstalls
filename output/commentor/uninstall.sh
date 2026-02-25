#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'commentor_display_count'
wp option delete 'commentor_admin_display_name'
wp option delete 'commentor_form_direction'
wp option delete 'commentor_primary_color'
wp option delete 'commentor_box_background'
wp option delete 'commentor_box_padding'
wp option delete 'commentor_distinguish_the_author'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'likes'"
