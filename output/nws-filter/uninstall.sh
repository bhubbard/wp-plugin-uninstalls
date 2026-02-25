#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nwsfilter_settings'
wp option delete 'nwsfilter_categories_auto_expand'
wp option delete 'nwsfilter_categories_before_filter'
wp option delete 'nwsfilter_collapsed_default'
wp option delete 'nwsfilter_hide_selected_filters'

