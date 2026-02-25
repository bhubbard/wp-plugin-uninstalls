-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_rsvp_enabled', 'dbem_bookings_currency', 'aff_default_referral_status');

