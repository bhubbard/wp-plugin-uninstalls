#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mhr_banner_status'
wp option delete 'mhr_banner_source'
wp option delete 'mhr_click_url'
wp option delete 'mhr_backg_color'
wp option delete 'mhr_banner_height'
wp option delete 'mhr_banner_width'
wp option delete 'mhr_background_height'
wp option delete 'mhr_background_bottom'

