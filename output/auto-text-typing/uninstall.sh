#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'message'
wp option delete 'text-color'
wp option delete 'background-color'
wp option delete 'padding'
wp option delete 'border-radius'
wp option delete 'border-width'
wp option delete 'border-style'
wp option delete 'copyrighte'
wp option delete 'melibu-plugin-typing-version'
wp option delete 'melibu-plugin-typing-db-version'
wp option delete 'copyright'
wp option delete 'melibu-plugin-typing-logo-get'

# Delete Transients
wp transient delete 'melibu-plugin-typing-page-activated'

