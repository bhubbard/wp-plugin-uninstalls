#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woma_plugin_redirect_on_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woma_workout_exercises'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woma_workout_exercises'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woma_workout_exercises'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woma_workout_exercises'"
