#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'wpz_social_icons_dismiss_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpz_social_icons_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzoom_sharing_show_on_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzoom_sharing_show_on_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzoom_sharing_show_on_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzoom_sharing_show_on_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpzoom_wpz_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpzoom_wpz_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpzoom_wpz_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpzoom_wpz_dismiss_black_friday_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortcode_item_wpzoom-icons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortcode_item_wpzoom-icons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortcode_item_wpzoom-icons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortcode_item_wpzoom-icons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzoom_sharing_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzoom_sharing_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzoom_sharing_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzoom_sharing_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpzoom_sharing_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpzoom_sharing_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpzoom_sharing_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpzoom_sharing_post_types'"
