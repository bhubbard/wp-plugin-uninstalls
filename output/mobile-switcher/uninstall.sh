#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobile_switcher_enabled'
wp option delete 'ms_desktop_template'
wp option delete 'ms_mobile_template'
wp option delete 'ms_tablet_template'

