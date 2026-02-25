#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prism_detached_theme'
wp option delete 'prism_detached_extensions'
wp option delete 'prism_detached_cache_keys'
wp option delete 'prism-detached-invisibles'
wp option delete 'prism-detached-autolinker'

