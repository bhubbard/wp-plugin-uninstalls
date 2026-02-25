#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spreadshopSlug'
wp option delete 'spreadshopToken'
wp option delete 'spreadshopOptimizeUrl'
wp option delete 'spreadshopMetadata'
wp option delete 'spreadshopSwipeMenu'
wp option delete 'spreadshopLoadFonts'
wp option delete 'spreadshopPlatform'
wp option delete 'spreadshopID'
wp option delete 'spreadshopLocale'
wp option delete 'spreadshopNaviEntry'

