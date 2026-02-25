#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acwp_skiplinks'
wp option delete 'acwp_skiplinks_body_open'
wp option delete 'acwp_skiplinks_turnsides'
wp option delete 'acwp_skiplinks_noanimation'
wp option delete 'acwp_skiplinks_noshadows'
wp option delete 'acwp_skiplinks_header_label'
wp option delete 'acwp_skiplinks_header_id'
wp option delete 'acwp_skiplinks_footer_label'
wp option delete 'acwp_skiplinks_footer_id'
wp option delete 'acwp_skiplinks_content_label'
wp option delete 'acwp_skiplinks_content_id'
wp option delete 'acwp_skiplinks_bg'
wp option delete 'acwp_skiplinks_txt'
wp option delete 'acwp_skiplinks_nometa'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acwp_skiplinks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acwp_skiplinks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acwp_skiplinks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acwp_skiplinks'"
