#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_core'
wp transient delete 'update_themes'

