#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buganimation_enabled'
wp option delete 'buganimation_min_bugs'
wp option delete 'buganimation_max_bugs'
wp option delete 'buganimation_mouse_over'

