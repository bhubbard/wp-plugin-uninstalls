#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-secure-settings_options'
wp option delete 'wpsp-background-color'
wp option delete 'wpsp-background-image'
wp option delete '_background_image'
wp option delete '_pin'
wp option delete '_crb_background'
wp option delete 'wpsp-logo'
wp option delete '_logo_image'
wp option delete '_logo_width'
wp option delete '_logo_height'
wp option delete '_pin_placeholder'
wp option delete '_submit_label'
wp option delete '_try_again_error'
wp option delete '_description'
wp option delete '_title_field'
wp option delete '_enable'

