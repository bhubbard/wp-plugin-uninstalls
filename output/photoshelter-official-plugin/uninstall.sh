#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps_gallery_sort'
wp option delete 'photoshelter_default_width'
wp option delete 'photoshelter'
wp option delete 'ps_cookies'
wp option delete 'photoshelter_logged_in'
wp option delete 'photoshelter_menu_create'
wp option delete 'photoshelter_org'

