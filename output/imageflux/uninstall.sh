#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imageflux_exclude_extensions'
wp option delete 'imageflux_storage'
wp option delete 'imageflux_domain'
wp option delete 'imageflux_format'
wp option delete 'imageflux_quality'
wp option delete 'imageflux_exif_removal'

