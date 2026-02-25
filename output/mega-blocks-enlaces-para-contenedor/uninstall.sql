-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TBMB_FREE_KEY', 'TBIWP_FREE_KEY');

