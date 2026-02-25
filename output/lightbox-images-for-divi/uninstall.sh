#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ayudawp_lightbox_images_for_divi_options'

# Delete Transients
wp transient delete 'ayudawp_lightbox_activation_error'

