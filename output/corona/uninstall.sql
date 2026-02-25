-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('corona_all', 'corona_countries', 'corona_history', 'corona_last_updated');

