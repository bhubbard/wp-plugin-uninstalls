#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bacs_order_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cheque_order_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cod_downloadable_order_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cod_order_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mode'"

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

