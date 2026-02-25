-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cte-countdown-timer-event-v', 'cte-countdown-timer-event-type', 'cte-countdown-timer-event-installDate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cte-countdown-timer-settings', 'timer_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('cte-countdown-timer-settings', 'timer_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('cte-countdown-timer-settings', 'timer_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cte-countdown-timer-settings', 'timer_date');

