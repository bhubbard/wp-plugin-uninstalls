#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'course_display_settings'
wp option delete 'display_position'
wp option delete 'list_type'
wp option delete 'scc_orderby'
wp option delete 'scc_order'
wp option delete 'current_post'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

