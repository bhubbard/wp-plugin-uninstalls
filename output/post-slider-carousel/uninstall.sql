-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psc_slider_settings', 'psc_pgrid_settings', 'psc_messages');

