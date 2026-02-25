#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flying_scripts_disabled_pages'
wp option delete 'flying_scripts_include_list'
wp option delete 'FLYING_SCRIPTS_VERSION'
wp option delete 'flying_scripts_timeout'

