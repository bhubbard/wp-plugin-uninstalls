#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cache_images'
wp option delete 'cache_css'
wp option delete 'cache_js'
wp option delete 'cache_other'

