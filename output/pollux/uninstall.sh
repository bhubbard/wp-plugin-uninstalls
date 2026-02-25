#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bedrock_autoloader'

# Delete Transients
wp transient delete 'settings_errors'

