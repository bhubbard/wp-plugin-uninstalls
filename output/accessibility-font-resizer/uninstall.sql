-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afr_elems', 'afr_debug', 'afr_cookie_delay', 'afr_normal', 'afr_large', 'afr_xlarge');

