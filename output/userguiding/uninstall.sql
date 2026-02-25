-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('userguiding_code', 'userguiding_site', 'userguiding_admin', 'userguiding_customizer');

