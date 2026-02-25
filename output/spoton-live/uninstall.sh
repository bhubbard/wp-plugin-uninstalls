#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spoton_call_tracking'
wp option delete 'spoton_activate_hooks'
wp option delete 'spoton_activate_forms'
wp option delete 'spoton_key'
wp option delete 'spoton_exclude_forms'

