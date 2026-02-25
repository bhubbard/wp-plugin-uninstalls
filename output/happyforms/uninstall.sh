#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_happyforms_widget'
wp option delete 'widget_block'
wp option delete 'happyforms-validation-messages'
wp option delete 'happyforms_modal_dismissed_onboarding'
wp option delete 'happyforms_show_powered_by'
wp option delete '_happyforms_received_submissions'
wp option delete 'happyforms-tracking'
wp option delete 'ttf_updates_key_happyforms'
wp option delete 'happyforms-data-version'
wp option delete '_happyforms_cleanup_on_deactivate'

# Delete Transients
wp transient delete 'happyforms_review_notice_recommend'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_happyforms_admin_notices_%' OR option_name LIKE '_site_transient_happyforms_admin_notices_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happyforms-dismissed-notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happyforms-dismissed-notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happyforms-dismissed-notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happyforms-dismissed-notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_happyforms_parts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_happyforms_parts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_happyforms_parts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_happyforms_parts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syntax_highlighting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'happyforms-settings-sections-states'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'happyforms-settings-sections-states'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'happyforms-settings-sections-states'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'happyforms-settings-sections-states'"
