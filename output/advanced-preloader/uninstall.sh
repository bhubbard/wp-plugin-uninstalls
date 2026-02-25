#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advanced_preloader_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'advanced_preloader_%'"
wp option delete 'advanced_preloader_design'
wp option delete 'advanced_preloader_animation'

