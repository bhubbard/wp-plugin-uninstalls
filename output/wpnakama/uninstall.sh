#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpnakama_update_indicator'
wp option delete 'wpnakama_plugin_sale'
wp option delete 'wpnakama_subscriber'
wp option delete 'wpnakama_license'
wp option delete 'wpnakama_rating'
wp option delete 'wpnakama_license_message'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugin_info' OR option_name LIKE '_site_transient_%_plugin_info'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnakama_board_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnakama_board_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnakama_board_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnakama_board_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpnakama_feature_info_notice_dissmiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpnakama_feature_info_notice_dissmiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpnakama_feature_info_notice_dissmiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpnakama_feature_info_notice_dissmiss'"
