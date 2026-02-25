#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slate-opt-plugin-version'
wp option delete 'slate-opt-cache'
wp option delete 'slate-popup-35824'
wp option delete 'slate-popup-vc'
wp option delete 'slate-popup-raster'
wp option delete 'slate-popup-titles'
wp option delete 'slate-popup-shapes'

