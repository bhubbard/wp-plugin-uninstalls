-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xswcusop-upselloptiondata', 'xswcusop-orderbumpdata');

