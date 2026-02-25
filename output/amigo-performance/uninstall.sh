#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amigoperf_version_updated'
wp option delete 'amigoperf_asset_cache'
wp option delete 'amigoperf_activation_version'
wp option delete 'amigoperf_last_version_check'
wp option delete 'amigoPerf_nq_script'
wp option delete 'amigoPerf_nq_style'
wp option delete 'amigoperf_major_update_3_0'
wp option delete 'amigoPerf_rqs'
wp option delete 'amigoPerf_remoji'
wp option delete 'amigoPerf_defer'
wp option delete 'amigoPerf_iframelazy'
wp option delete 'amigoPerf_lazyload'
wp option delete 'amigoPerf_minify_css'
wp option delete 'amigoPerf_minify_js'
wp option delete 'amigoPerf_plugin_version'
wp option delete 'amigoperf_error_log'
wp option delete 'amigoperf_network_version'
wp option delete 'amigoperf_network_activated'
wp option delete 'amigoperf_network_settings'

# Delete Transients
wp transient delete 'amigoperf_stats'
wp transient delete 'amigoperf_asset_data'
wp transient delete 'amigoperf_version_check'
wp transient delete 'amigoperf_network_stats'
wp transient delete 'amigoperf_network_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amigoperf_hide_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amigoperf_hide_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amigoperf_hide_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amigoperf_hide_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amigoperf_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amigoperf_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amigoperf_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amigoperf_preferences'"
