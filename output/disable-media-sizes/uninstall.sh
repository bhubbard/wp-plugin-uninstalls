#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_media_sizes_options'
wp option delete 'disable-media-sizes-dismiss-notice'

