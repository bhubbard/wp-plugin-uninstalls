-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsvp_db_version', 'rsvp-rate-time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rsvp_screen_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('rsvp_screen_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('rsvp_screen_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rsvp_screen_options');

