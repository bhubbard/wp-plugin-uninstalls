#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'codingfreaks_plugin_settings'

# Delete Transients
wp transient delete 'codingfreaks_ping_notice'

