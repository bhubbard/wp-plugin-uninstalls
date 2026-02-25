#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbuynow-text'
wp option delete 'wcbuynow-inppage'
wp option delete 'wcbuynow-inshoppage'
wp option delete 'wcbuynow-spbeforeafter'
wp option delete 'wcbuynow-btncustomize'
wp option delete 'wcbuynow-btnradius'
wp option delete 'wcbuynow-primaryclr'
wp option delete 'wcbuynow-bgclr'
wp option delete 'wcbuynow-hoverclr'
wp option delete 'wcbuynow-bghoverclr'
wp option delete 'wcbuynow-btngap'
wp option delete 'wcbuynowbtn_plugin_do_activate'

