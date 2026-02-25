#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'qltgm'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qltgm-user-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qltgm-user-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qltgm-user-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qltgm-user-rating'"
