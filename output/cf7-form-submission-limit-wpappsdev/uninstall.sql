-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpadcf7sl_installed', 'wpadcf7sl_version');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpadcf7sl-limit-enabled', 'wpadcf7sl-reset-date', 'wpadcf7sl-total-submission', 'wpadcf7sl-period-interval', 'wpadcf7sl-period', 'wpadcf7sl-limit-type', 'wpadcf7sl-reset-limit-disable', 'wpadcf7sl-after-submission', 'wpadcf7sl-page-reload-delay', 'wpadcf7sl-redirect-page', 'wpadcf7sl-disable-display-message', 'submission-total-count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpadcf7sl-limit-enabled', 'wpadcf7sl-reset-date', 'wpadcf7sl-total-submission', 'wpadcf7sl-period-interval', 'wpadcf7sl-period', 'wpadcf7sl-limit-type', 'wpadcf7sl-reset-limit-disable', 'wpadcf7sl-after-submission', 'wpadcf7sl-page-reload-delay', 'wpadcf7sl-redirect-page', 'wpadcf7sl-disable-display-message', 'submission-total-count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpadcf7sl-limit-enabled', 'wpadcf7sl-reset-date', 'wpadcf7sl-total-submission', 'wpadcf7sl-period-interval', 'wpadcf7sl-period', 'wpadcf7sl-limit-type', 'wpadcf7sl-reset-limit-disable', 'wpadcf7sl-after-submission', 'wpadcf7sl-page-reload-delay', 'wpadcf7sl-redirect-page', 'wpadcf7sl-disable-display-message', 'submission-total-count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpadcf7sl-limit-enabled', 'wpadcf7sl-reset-date', 'wpadcf7sl-total-submission', 'wpadcf7sl-period-interval', 'wpadcf7sl-period', 'wpadcf7sl-limit-type', 'wpadcf7sl-reset-limit-disable', 'wpadcf7sl-after-submission', 'wpadcf7sl-page-reload-delay', 'wpadcf7sl-redirect-page', 'wpadcf7sl-disable-display-message', 'submission-total-count');

