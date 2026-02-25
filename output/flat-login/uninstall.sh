#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flat_logo_upload'
wp option delete 'flat_logo_url'
wp option delete 'flat_logo_title'
wp option delete 'flat_bg_color'
wp option delete 'flat_custom_style'
wp option delete 'flat_logo_width'
wp option delete 'flat_logo_height'

