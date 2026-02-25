-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srmb_ayudawp_options', 'srmb_ayudawp_validation_error');

