#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm_dismiss_feature_notice'
wp option delete 'sm_admin_notices'
wp option delete 'shortcode_list'
wp option delete 'sm_shortcode_package_list'
wp option delete 'sm_later'
wp option delete 'sm_vote'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_hide_shortcode_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_hide_shortcode_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_hide_shortcode_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_hide_shortcode_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_shortcode_atts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_shortcode_atts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_shortcode_atts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_shortcode_atts'"
