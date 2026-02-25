#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fl_builder_post_types'
wp option delete '_beaver_extender_active'
wp option delete 'ninja_forms_load_deprecated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
