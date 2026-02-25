#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preloadx_selected'
wp option delete 'preloadx_color'
wp option delete 'preloadx_bgcolor'
wp option delete 'preloadx_bggradient'
wp option delete 'preloadx_bgimage'
wp option delete 'preloadx_bgtype'

