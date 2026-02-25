-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprb-hours', 'wprb-power-on', 'wprb-button-position', 'wprb-display-number-availables', 'wprb-activate-external-seats', 'wprb-bookable', 'wprb-margin-time', 'wprb-medium-time', 'wprb-expiration-time', 'wprb-activate-last-minute', 'wprb-last-minute-description', 'wprb-last-minute', 'wprb-activate-admin-notification', 'wprb-admin-recipients');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wprb-time', 'wprb-people', 'wprb-first-name', 'wprb-last-name', 'wprb-email', 'wprb-phone', 'wprb-table', 'wprb-date', 'wprb-until', 'wprb-external', 'wprb-notes', 'wprb-status');
DELETE FROM wp_usermeta WHERE meta_key IN ('wprb-time', 'wprb-people', 'wprb-first-name', 'wprb-last-name', 'wprb-email', 'wprb-phone', 'wprb-table', 'wprb-date', 'wprb-until', 'wprb-external', 'wprb-notes', 'wprb-status');
DELETE FROM wp_termmeta WHERE meta_key IN ('wprb-time', 'wprb-people', 'wprb-first-name', 'wprb-last-name', 'wprb-email', 'wprb-phone', 'wprb-table', 'wprb-date', 'wprb-until', 'wprb-external', 'wprb-notes', 'wprb-status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wprb-time', 'wprb-people', 'wprb-first-name', 'wprb-last-name', 'wprb-email', 'wprb-phone', 'wprb-table', 'wprb-date', 'wprb-until', 'wprb-external', 'wprb-notes', 'wprb-status');

