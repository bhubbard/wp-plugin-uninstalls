-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_otd_enable', '_otd_display_location', '_otd_tips_title', '_otd_taxable');

