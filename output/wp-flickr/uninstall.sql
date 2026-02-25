-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpflickr_token', 'wpflickr_alt_title', 'wpflickr_nsid');

