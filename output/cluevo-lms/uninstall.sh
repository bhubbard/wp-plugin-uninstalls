#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cluevo-modules-display-mode'
wp option delete 'cluevo-modules-display-position'
wp option delete 'cluevo-enable-guests'
wp option delete 'cluevo-auto-add-new-users'
wp option delete 'cluevo-display-diagonal-tiles'
wp option delete 'cluevo-delete-data-on-uninstall'
wp option delete 'cluevo-max-level'
wp option delete 'cluevo-exp-first-level'
wp option delete 'cluevo-level-titles'
wp option delete 'cluevo-basic-module-security'
wp option delete 'cluevo-force-https-embeds'
wp option delete 'cluevo-modules-only-score-once'
wp option delete 'cluevo-login-enabled'
wp option delete 'cluevo-breadcrumbs-enabled'
wp option delete 'cluevo-display-item-status-row'
wp option delete 'cluevo-display-item-type-text'
wp option delete 'cluevo-show-tile-indicator'
wp option delete 'cluevo-display-module-ratings'
wp option delete 'cluevo-display-empty-item-message'
wp option delete 'cluevo-redirect-single-tree-index'
wp option delete 'cluevo-display-module-ratings-threshold'
wp option delete 'cluevo-login-page'
wp option delete 'cluevo-modules-attempt-prompt'
wp option delete 'cluevo-module-ratings'
wp option delete 'cluevo-modules-scorm-completion-commit'
wp option delete 'cluevo-module-ratings-trigger'
wp option delete 'cluevo-module-guest-progress-notification'
wp option delete 'cluevo-module-commit-interval'
wp option delete 'cluevo-modules-scorm-success'
wp option delete 'cluevo-hide-item-list-style-switch'
wp option delete 'cluevo-default-item-list-style'
wp option delete 'cluevo-tree-index-page'
wp option delete 'cluevo-tree-index-page-content-mode'
wp option delete 'cluevo-user-profile-page'
wp option delete 'cluevo-user-profile-page-content-mode'
wp option delete 'cluevo-login-page-content-mode'
wp option delete 'cluevo-display-db-update-result'
wp option delete 'cluevo-selected-course-group'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cluevo-module-rating-avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cluevo-module-rating-avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cluevo-module-rating-avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cluevo-module-rating-avg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cluevo_reports_progress_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cluevo_reports_progress_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cluevo_reports_progress_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cluevo_reports_progress_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cluevo_reports_main_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cluevo_reports_main_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cluevo_reports_main_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cluevo_reports_main_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cluevo_reports_scorm_parms_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cluevo_reports_scorm_parms_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cluevo_reports_scorm_parms_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cluevo_reports_scorm_parms_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cluevo-last-change-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cluevo-last-change-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cluevo-last-change-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cluevo-last-change-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cluevo-lms-meta-path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cluevo-lms-meta-path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cluevo-lms-meta-path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cluevo-lms-meta-path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%'"
