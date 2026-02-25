#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickdocs_flush_rewrite_rules'
wp option delete 'qds_home_title'
wp option delete 'qds_home_content'
wp option delete 'qds_font_family'
wp option delete 'qds_background_image'
wp option delete 'qds_accent_colour'
wp option delete 'qds_home_show_topics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quickdocs_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quickdocs_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quickdocs_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quickdocs_state'"
