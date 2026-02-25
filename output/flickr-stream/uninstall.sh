#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flickrstream_main_opts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'flickrstream_short_%'"
wp option delete 'widget_flickrstream_widget'

