#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick-featured-images-settings'
wp option delete 'quick-featured-images-defaults'

# Delete Transients
wp transient delete 'quick-featured-images'

