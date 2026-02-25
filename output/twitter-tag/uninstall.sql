-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmc_TT_tweet', 'pmc_TT_user', 'pmc_TT_pass');

