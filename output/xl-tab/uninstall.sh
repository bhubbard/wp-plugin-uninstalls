#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_activation_time'
wp option delete 'donot_disturb'
wp option delete 'thepack_remind_me'
wp option delete 'rtrs_rated'
wp option delete 'xltab'

