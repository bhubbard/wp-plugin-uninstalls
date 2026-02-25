#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marketify_hide_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marketify_hide_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marketify_hide_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marketify_hide_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marketify_marketing_tools_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marketify_marketing_tools_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marketify_marketing_tools_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marketify_marketing_tools_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'marketify_ribbon_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'marketify_ribbon_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'marketify_ribbon_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'marketify_ribbon_schema'"
