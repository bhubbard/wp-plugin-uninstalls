#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'total_views_total'
wp option delete 'total_views_label'
wp option delete 'total_views_bold'
wp option delete 'total_views_italic'
wp option delete 'total_views_underline'
wp option delete 'total_views_color'

