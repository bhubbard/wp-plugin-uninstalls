-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgi_ltrav_ver', 'sgi_ltrav_opts', 'sgi_ltrav_gfonts');

