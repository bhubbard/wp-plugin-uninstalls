-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wask', 'wask_facebook_pixel', 'wask_google_analytic');

