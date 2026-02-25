#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gsmapCenter'
wp option delete 'gsmapZoom'
wp option delete 'gsmapSize'
wp option delete 'gsmapImageFormat'
wp option delete 'gsmapMapType'
wp option delete 'gsmapAPIKey'
wp option delete 'gsmapClass'
wp option delete 'gsmapStyle'

