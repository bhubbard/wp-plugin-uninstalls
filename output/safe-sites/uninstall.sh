#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safe_sites_force_ssl'
wp option delete 'auto_update_core_major'
wp option delete 'safe_sites_virustotal_api_key'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'safe_sites-demo-block-data'
wp transient delete 'safesites_notices'
wp transient delete 'jetpack_is_single_user'

