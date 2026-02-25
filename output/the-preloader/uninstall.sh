#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'the_preloader_settings'
wp option delete 'the_preloader_first_use'
wp option delete 'wptpreloader_image'
wp option delete 'wptpreloader_bg_color'

