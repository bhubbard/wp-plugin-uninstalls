#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%install-hide'"
wp option delete 'easyfolders_updated_from_wpmlf'
wp option delete 'easyfolders_updated_from_enhanced'
wp option delete 'easyfolders_updated_from_wpmf'
wp option delete 'easyfolders_updated_from_happyfiles'
wp option delete 'easyfolders_updated_from_realmedia'
wp option delete 'easyfolders_updated_from_filebird'
wp option delete 'easyfolders_updated_from_wicked_folders'
wp option delete 'easyfolders_updated_from_premio_folders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'new_term_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efs-query-params-%'"
wp option delete 'efs-query-params-attachment'
wp option delete 'easyfolders_sort_folder'
wp option delete 'easyfolders_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom-post-types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_run'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%woocommerce-sync-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installation-steps'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%newsletter-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%newsletter-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%upgrade-hellobar-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%joy-ride-alert-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-count'"
wp option delete 'easy-folders-install-hide'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account-connect-notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activating_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activation-country-code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%feedback-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%joy-ride-tour-completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account-activation-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account-deactivation-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account-uninstall-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-disable-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%subscription-upgrade-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%subscription-downgrade-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account-connection-timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%site_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_key'"
wp option delete 'efs_per_user_media'
wp option delete 'easy-folders-activation-redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%usage_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%initial-trial-upgrade-notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%free-to-pro-plugin-conversion-notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%conflict-notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%conflict_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%upgrade-to-pro-notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-notice-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rate-notice-hide'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rate-notice-already-done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating-hide-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%upgrade-hellobar-hide-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%usage-tracking-hide-count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%media-library-pro-alert-hide'"

# Delete Transients
wp transient delete 'upload-ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%conflict_check' OR option_name LIKE '_site_transient_%conflict_check'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%starred'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%starred'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%starred'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%starred'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
