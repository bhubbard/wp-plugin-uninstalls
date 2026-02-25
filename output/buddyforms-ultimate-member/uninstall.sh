#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddyforms_ultimate_settings'
wp option delete 'um_options'
wp option delete 'recently_activated'
wp option delete 'buddyforms_ultimate_member_update_136'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddyforms_um_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddyforms_um_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddyforms_um_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddyforms_um_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
