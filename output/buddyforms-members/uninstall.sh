#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddyforms_buddypress_settings'
wp option delete 'buddyforms_posttypes_default'
wp option delete 'recently_activated'
wp option delete 'buddyforms_registration_form'
wp option delete 'buddyforms_registration_page'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_xprofile_visibility_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_xprofile_visibility_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_xprofile_visibility_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_xprofile_visibility_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bf_bp_activity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bf_bp_activity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bf_bp_activity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bf_bp_activity_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'buddyforms_members_tgmpa_dismissed_notice_%'"
