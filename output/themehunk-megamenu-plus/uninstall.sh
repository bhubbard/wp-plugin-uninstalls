#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themehunk_megamenu_options'
wp option delete 'themehunk_megamenu_settings'
wp option delete 'themehunk_megamenu_multisite_share_themes'
wp option delete 'themehunk_megamenu_themes_last_updated'
wp option delete 'themehunk_megamenu_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themehunk_megamenu_item_megamenu_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themehunk_megamenu_item_megamenu_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themehunk_megamenu_item_megamenu_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themehunk_megamenu_item_megamenu_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themehunk_megamenu_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themehunk_megamenu_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themehunk_megamenu_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themehunk_megamenu_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themehunk_megamenu_builder_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themehunk_megamenu_builder_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themehunk_megamenu_builder_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themehunk_megamenu_builder_options'"
