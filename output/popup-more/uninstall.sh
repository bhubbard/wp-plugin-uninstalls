#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'YpmPopupCount%'"
wp option delete 'ypm-hide-media-button'
wp option delete 'ypm_redirect'
wp option delete 'YcfPopupFormDraft'
wp option delete 'YpmShowNextTime'
wp option delete 'YpmUsageDays'
wp option delete 'YpmDontShowReviewNotice'
wp option delete 'YpmFeatureSuggestion'
wp option delete 'ypm-hide-modules-menu'
wp option delete 'YpmInstallDate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ypm-metabox-popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ypm-metabox-popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ypm-metabox-popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ypm-metabox-popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ypm-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ypm-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ypm-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ypm-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ypm-display-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ypm-display-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ypm-display-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ypm-display-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ypm-conditions-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ypm-conditions-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ypm-conditions-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ypm-conditions-settings'"
