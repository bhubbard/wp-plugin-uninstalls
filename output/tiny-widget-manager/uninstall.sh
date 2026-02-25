#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twim_debug_mode'
wp option delete 'twim_minified_assets'
wp option delete 'twim_color_theme'
wp option delete 'twim_disable_block_editor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

