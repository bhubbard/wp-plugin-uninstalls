-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aben_license_status', 'aben_options', 'aben_event_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aben_notification', 'aben_unsubscribe_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('aben_notification', 'aben_unsubscribe_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('aben_notification', 'aben_unsubscribe_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aben_notification', 'aben_unsubscribe_date');

