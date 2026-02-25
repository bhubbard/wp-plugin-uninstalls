-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upstatement_ce_options', 'reference-post-type', 'button-text');

