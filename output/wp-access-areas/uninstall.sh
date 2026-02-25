#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpaa_default_post_status'
wp option delete 'wpaa_default_view_cap'
wp option delete 'wpaa_default_edit_cap'
wp option delete 'wpaa_default_comment_cap'
wp option delete 'wpaa_default_behavior'
wp option delete 'wpaa_fallback_page'
wp option delete 'accessareas_version'
wp option delete 'wpaa_enable_assign_cap'
wp option delete 'wpaa_default_caps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpaa_fallback_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpaa_fallback_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpaa_fallback_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpaa_fallback_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpaa_post_behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpaa_post_behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpaa_post_behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpaa_post_behavior'"
