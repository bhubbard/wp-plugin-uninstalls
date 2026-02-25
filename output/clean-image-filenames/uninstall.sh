#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clean_image_filenames_plugin_version'
wp option delete 'clean_image_filenames_mime_types'

# Delete Transients
wp transient delete '_clean_image_filenames_original_filename'

