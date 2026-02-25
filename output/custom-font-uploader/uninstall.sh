#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfup-general-settings'
wp option delete 'custom-font-uploader-settings'
wp option delete 'google-font-uploader-settings'
wp option delete 'cfup-support'
wp option delete 'font_file_name'
wp option delete 'cfu_general_settings'
wp option delete 'cfupgooglefonts_data'
wp option delete 'cfu_apikey_verified'
wp option delete 'googlefont_file_name'

# Delete Transients
wp transient delete '_cfu_is_new_install'

