-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ads-option-publisher-zones', 'ads-option-publisher-zones-last-update');

