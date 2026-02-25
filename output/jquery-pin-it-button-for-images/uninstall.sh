#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jpibfi_selection_options'
wp option delete 'jpibfi_visual_options'
wp option delete 'jpibfi_lightbox_options'
wp option delete 'jpibfi_options_version'
wp option delete 'jpibfi_version'
wp option delete 'jpibfi_pro_ad'
wp option delete 'jpibfi_license'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_jpibfi_activation_redirect'

