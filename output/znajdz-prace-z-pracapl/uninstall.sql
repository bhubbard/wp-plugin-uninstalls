-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('znajdz-prace-z-pracapl', 'znzppl_appearance');

