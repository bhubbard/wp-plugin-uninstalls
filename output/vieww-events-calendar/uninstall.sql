-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vieww_version', 'vieww_design_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_date', 'event_time', 'event_description', 'recurring_days', 'recurring_start', 'recurring_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_date', 'event_time', 'event_description', 'recurring_days', 'recurring_start', 'recurring_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_date', 'event_time', 'event_description', 'recurring_days', 'recurring_start', 'recurring_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_date', 'event_time', 'event_description', 'recurring_days', 'recurring_start', 'recurring_end');

