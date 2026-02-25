#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'likecoin_plugin_version'

# Delete Transients
wp transient delete 'likecoin_welcome_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lc_likecoin_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lc_likecoin_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lc_likecoin_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lc_likecoin_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lc_likecoin_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lc_likecoin_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lc_likecoin_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lc_likecoin_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lc_widget_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lc_widget_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lc_widget_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lc_widget_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lc_widget_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lc_widget_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lc_widget_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lc_widget_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lc_likecoin_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lc_likecoin_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lc_likecoin_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lc_likecoin_wallet'"
