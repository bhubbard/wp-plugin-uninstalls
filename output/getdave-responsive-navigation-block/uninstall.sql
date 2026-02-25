-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_responsive_nav_breakpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_responsive_nav_unit';

