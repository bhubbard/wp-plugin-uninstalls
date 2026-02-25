-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automatic_post_date_filler_meta', 'automatic_post_date_filler_settings', 'automatic_post_date_filler');

