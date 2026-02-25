#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwcountdown_style_settings'

# Delete Transients
wp transient delete 'update_plugins'

