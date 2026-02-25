#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'refactored_video_importer'
wp option delete 'mvi-youtube-api-key-verified'
wp option delete 'mvi-youtube-api-key'
wp option delete 'mvi-vimeo-client-id'
wp option delete 'mvi-vimeo-client-secret'
wp option delete 'mvi-templates'
wp option delete 'mvi-vimeo-api-id'
wp option delete 'mvi-vimeo-api-secret'

# Delete Transients
wp transient delete 'meks-video-importer-vimeo-access-token'

