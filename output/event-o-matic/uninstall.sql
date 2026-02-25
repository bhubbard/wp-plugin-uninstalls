-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eom_event_slug', 'eom', 'eom_events_per_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eom-address', 'eom-date-start', 'eom-place', 'eom-date-end', 'eom-lat', 'eom-lng', 'eom-url');
DELETE FROM wp_usermeta WHERE meta_key IN ('eom-address', 'eom-date-start', 'eom-place', 'eom-date-end', 'eom-lat', 'eom-lng', 'eom-url');
DELETE FROM wp_termmeta WHERE meta_key IN ('eom-address', 'eom-date-start', 'eom-place', 'eom-date-end', 'eom-lat', 'eom-lng', 'eom-url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eom-address', 'eom-date-start', 'eom-place', 'eom-date-end', 'eom-lat', 'eom-lng', 'eom-url');

