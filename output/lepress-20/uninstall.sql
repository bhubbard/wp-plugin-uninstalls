-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lepress-cron-is-running', 'lepress-settings', 'lepress-simple-subscribe-success', 'lepress-last-widget-course', 'lepress-courses-sitewide');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lepress-read', '_lepress-assignment-meta', '_lepress-assignment-end-date', 'lepress-feedback-given', '_lepress-assignment-start-date', '_is-lepress-assignment', '_lepress-assignment-error', '_lepress-notification-sent', 'iframe-key');
DELETE FROM wp_usermeta WHERE meta_key IN ('lepress-read', '_lepress-assignment-meta', '_lepress-assignment-end-date', 'lepress-feedback-given', '_lepress-assignment-start-date', '_is-lepress-assignment', '_lepress-assignment-error', '_lepress-notification-sent', 'iframe-key');
DELETE FROM wp_termmeta WHERE meta_key IN ('lepress-read', '_lepress-assignment-meta', '_lepress-assignment-end-date', 'lepress-feedback-given', '_lepress-assignment-start-date', '_is-lepress-assignment', '_lepress-assignment-error', '_lepress-notification-sent', 'iframe-key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lepress-read', '_lepress-assignment-meta', '_lepress-assignment-end-date', 'lepress-feedback-given', '_lepress-assignment-start-date', '_is-lepress-assignment', '_lepress-assignment-error', '_lepress-notification-sent', 'iframe-key');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_lepress-student-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_lepress-student-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_lepress-student-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_lepress-student-%';

