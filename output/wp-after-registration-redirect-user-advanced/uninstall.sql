-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wparua_registration_redirect_filter', 'wparua_registration_redirect_enable');

