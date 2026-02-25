#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'screencloud_plugin_settings'

# Delete Transients
wp transient delete 'screencloud_activation_notice'

