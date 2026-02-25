#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Shortcodes_Ultimate_Plugin_Not_Activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Delete Transients
wp transient delete 'su/generator/popup'
wp transient delete 'su/generator/settings/pdf'

