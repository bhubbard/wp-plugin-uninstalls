#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fileorganizer_pro_version'
wp option delete 'fileorganizer_version'
wp option delete 'fileorganizer_options'
wp option delete 'fileorganizer_promo_time'
wp option delete 'softaculous_plugin_update_notice'

# Delete Transients
wp transient delete 'update_plugins'

