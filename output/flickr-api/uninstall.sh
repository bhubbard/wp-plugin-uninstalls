#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flickr_api_key'
wp option delete 'flickr_display'
wp option delete 'flickr_galleria_theme'
wp option delete 'flickr_machinetag'
wp option delete 'flickr_username'
wp option delete 'flickr_api_secret'
wp option delete 'flickr_api_cache_time'
wp option delete 'flickr_nsid'

