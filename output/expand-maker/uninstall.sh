#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yrm-read-more-%'"
wp option delete 'yrm-hide-media-buttons'
wp option delete 'yrm-hide-google-fonts'
wp option delete 'yrm_redirect'
wp option delete 'yrm-user-roles'
wp option delete 'yrm-hid-find-and-replace-menu'
wp option delete 'yrm-hid-accordion-menu'
wp option delete 'EXPM_PREV_VERSION'
wp option delete 'EXPM_VERSION'
wp option delete 'YrmUsageDays'
wp option delete 'YrmInstallDate'
wp option delete 'YrmShowNextTime'
wp option delete 'yrm-delete-data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yrm-license-status-%'"
wp option delete 'YrmDontShowReviewNotice'

