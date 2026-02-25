#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'background_color'
wp option delete 'meter_color'
wp option delete 'title_color'
wp option delete 'detail_color'
wp option delete 'progress_color'
wp option delete 'minor_color'
wp option delete 'bar_thick'
wp option delete 'height_option'
wp option delete 'width_option'

