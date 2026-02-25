#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sb_registered_scripts'
wp option delete 'sb_registered_styles'
wp option delete 'sb_scriptlogic'

