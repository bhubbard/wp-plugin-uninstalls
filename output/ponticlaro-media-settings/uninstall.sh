#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ponticlaro_image_path'
wp option delete 'ponticlaro_image_attribs'
wp option delete 'ponticlaro_image_vals'
wp option delete 'ponticlaro_image_val_custom'
wp option delete 'ponticlaro_media_options'
wp option delete 'ponticlaro_image_path_saved'

