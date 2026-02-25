#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hocwp_plugin_core_version'
wp option delete 'hocwp_plugins'

# Delete Transients
wp transient delete 'hocwp_theme_flush_rewrite_rules'

