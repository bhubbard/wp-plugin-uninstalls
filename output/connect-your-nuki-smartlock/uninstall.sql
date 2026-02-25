-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nukiwp__settings');
DELETE FROM wp_options WHERE option_name LIKE '%]';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('booking_pin');
DELETE FROM wp_usermeta WHERE meta_key IN ('booking_pin');
DELETE FROM wp_termmeta WHERE meta_key IN ('booking_pin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('booking_pin');

