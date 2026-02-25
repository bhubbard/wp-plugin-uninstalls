#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps_setting'
wp option delete 'ps_setting_mousewheel'
wp option delete 'ps_setting_swipe'

