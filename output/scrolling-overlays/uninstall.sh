#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myprefix_image_id'
wp option delete 'koptional_scrolling_overlays_db_version'

