#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mq_maps_map_height'
wp option delete 'mq_maps_map_width'
wp option delete 'mq_maps_use_sidebar'
wp option delete 'mq_maps_use_editor_toolbar'
wp option delete 'mq_maps_use_editor_toolbar_line'
wp option delete 'mq_maps_use_quicktags_toolbar'
wp option delete 'mq_maps_use_media_toolbar'

