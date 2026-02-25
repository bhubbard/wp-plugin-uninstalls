-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('florist-one-flower-delivery', 'fhw-solutions-obituaries_1');

