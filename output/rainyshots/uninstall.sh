#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsAdmin_Player'
wp option delete 'rsAdmin_CacheDur'

# Delete Transients
wp transient delete 'cached_dribbble_shots'

