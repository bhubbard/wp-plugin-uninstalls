#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filter_sorter_display_options'
wp option delete 'filter_sorter_social_options'
wp option delete 'sorter_display_options'
wp option delete 'sorter_social_options'

