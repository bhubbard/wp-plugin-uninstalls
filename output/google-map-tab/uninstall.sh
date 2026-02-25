#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'id_tabs'
wp option delete 'max_width'
wp option delete 'min_width'
wp option delete 'height'
wp option delete 'map_type'
wp option delete 'all'
wp option delete 'view_all'
wp option delete 'active'
wp option delete 'info'
wp option delete 'background_color'
wp option delete 'text_color'
wp option delete 'db_table_version'

