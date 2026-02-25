#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PF_SETTINGS_OK'
wp option delete 'PF_SETTINGS_CADRE'
wp option delete 'PF_SETTINGS_PADDING'
wp option delete 'PF_SETTINGS_BORDER_COLOR'
wp option delete 'PF_SETTINGS_BORDER_WIDTH'
wp option delete 'PF_SETTINGS_BORDER_TYPE'

