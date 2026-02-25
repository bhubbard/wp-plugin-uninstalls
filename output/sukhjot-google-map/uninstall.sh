#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmap_key'
wp option delete 'gmap_link_txt'
wp option delete 'gmap_width'
wp option delete 'gmap_height'
wp option delete 'gmap_type_view'
wp option delete 'gmap_zoom'

