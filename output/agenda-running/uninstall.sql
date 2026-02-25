-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event-date', 'event-lieu', 'event-url', 'event-chrono', 'event-distance', 'event-type', 'event-place');
DELETE FROM wp_usermeta WHERE meta_key IN ('event-date', 'event-lieu', 'event-url', 'event-chrono', 'event-distance', 'event-type', 'event-place');
DELETE FROM wp_termmeta WHERE meta_key IN ('event-date', 'event-lieu', 'event-url', 'event-chrono', 'event-distance', 'event-type', 'event-place');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event-date', 'event-lieu', 'event-url', 'event-chrono', 'event-distance', 'event-type', 'event-place');

