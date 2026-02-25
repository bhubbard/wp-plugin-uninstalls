-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loancomparison_style');
DELETE FROM wp_options WHERE option_name LIKE '%1';

