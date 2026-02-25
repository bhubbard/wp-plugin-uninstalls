#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_pwa_theme_color'
wp option delete 'smart_pwa_assets_paths'
wp option delete 'smart_pwa_not_available_page'
wp option delete 'smart_pwa_background_color'
wp option delete 'smart_pwa_icon'

# Delete Transients
wp transient delete 'smart_pwa_hash'

