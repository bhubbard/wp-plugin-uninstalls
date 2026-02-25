#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gp_post_page_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_notice'"
