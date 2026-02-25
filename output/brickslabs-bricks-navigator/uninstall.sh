#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brickslabs_bricks_navigator_show_in_editor'
wp option delete 'brickslabs_bricks_navigator_show_community_menu'
wp option delete 'brickslabs_bricks_navigator_show_thirdparty_plugins'
wp option delete 'brickslabs_bricks_navigator_show_bricks_internal'
wp option delete 'brickslabs_bricks_navigator_show_bricks_external'

