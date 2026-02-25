#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_activity_filter_default'
wp option delete 'bp_activity_filter_profile_default'
wp option delete 'bp_activity_filter_hidden'
wp option delete 'bp_activity_filter_cpt_settings'

# Delete Transients
wp transient delete 'bp_activity_filter_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_activity_filter_activity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_activity_filter_activity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_activity_filter_activity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_activity_filter_activity_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_activity_filter_recorded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_activity_filter_recorded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_activity_filter_recorded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_activity_filter_recorded'"
