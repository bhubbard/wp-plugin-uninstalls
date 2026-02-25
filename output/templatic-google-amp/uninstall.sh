#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmpl_amp_settings'
wp option delete 'tmpl_amp_plugin_active'

# Delete Transients
wp transient delete 'twentyfourteen_category_count'

