#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'starbox_button'
wp option delete 'starbox_overlay'
wp option delete 'starbox_class'
wp option delete 'starbox_ghost'
wp option delete 'starbox_version'
wp option delete 'starbox_image'

