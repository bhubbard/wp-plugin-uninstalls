-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cluevo-modules-display-mode', 'cluevo-modules-display-position', 'cluevo-enable-guests', 'cluevo-auto-add-new-users', 'cluevo-display-diagonal-tiles', 'cluevo-delete-data-on-uninstall', 'cluevo-max-level', 'cluevo-exp-first-level', 'cluevo-level-titles', 'cluevo-basic-module-security', 'cluevo-force-https-embeds', 'cluevo-modules-only-score-once', 'cluevo-login-enabled', 'cluevo-breadcrumbs-enabled', 'cluevo-display-item-status-row', 'cluevo-display-item-type-text', 'cluevo-show-tile-indicator', 'cluevo-display-module-ratings', 'cluevo-display-empty-item-message', 'cluevo-redirect-single-tree-index', 'cluevo-display-module-ratings-threshold', 'cluevo-login-page', 'cluevo-modules-attempt-prompt', 'cluevo-module-ratings', 'cluevo-modules-scorm-completion-commit', 'cluevo-module-ratings-trigger', 'cluevo-module-guest-progress-notification', 'cluevo-module-commit-interval', 'cluevo-modules-scorm-success', 'cluevo-hide-item-list-style-switch', 'cluevo-default-item-list-style', 'cluevo-tree-index-page', 'cluevo-tree-index-page-content-mode', 'cluevo-user-profile-page', 'cluevo-user-profile-page-content-mode', 'cluevo-login-page-content-mode', 'cluevo-display-db-update-result', 'cluevo-selected-course-group');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cluevo-module-rating-avg', 'cluevo_reports_progress_settings', 'cluevo_reports_main_settings', 'cluevo_reports_scorm_parms_settings', 'cluevo-last-change-date', '_cluevo-lms-meta-path');
DELETE FROM wp_usermeta WHERE meta_key IN ('cluevo-module-rating-avg', 'cluevo_reports_progress_settings', 'cluevo_reports_main_settings', 'cluevo_reports_scorm_parms_settings', 'cluevo-last-change-date', '_cluevo-lms-meta-path');
DELETE FROM wp_termmeta WHERE meta_key IN ('cluevo-module-rating-avg', 'cluevo_reports_progress_settings', 'cluevo_reports_main_settings', 'cluevo_reports_scorm_parms_settings', 'cluevo-last-change-date', '_cluevo-lms-meta-path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cluevo-module-rating-avg', 'cluevo_reports_progress_settings', 'cluevo_reports_main_settings', 'cluevo_reports_scorm_parms_settings', 'cluevo-last-change-date', '_cluevo-lms-meta-path');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cluevo-admin-notice-dismissed-%';

