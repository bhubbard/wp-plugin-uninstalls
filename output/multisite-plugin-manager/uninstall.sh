#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pm_auto_activate_list'
wp option delete 'pm_user_control_list'
wp option delete 'pm_supporter_control_list'
wp option delete 'pm_plugin_override_list'
wp option delete 'site_name'

