#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'widget_wtiktok_feed'
wp option delete 'factory_plugin_versions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"

# Delete Transients
wp transient delete 'wbcr_factory_google_fonts'
wp transient delete 'wbcr_factory_google_fonts_raw'

