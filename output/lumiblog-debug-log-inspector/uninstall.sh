#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debug_log_inspector_plugins'
wp option delete 'debug_log_inspector_settings'

# Delete Transients
wp transient delete 'debug_log_inspector_notice'

