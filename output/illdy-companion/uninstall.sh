#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'illdy_show_required_actions'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

