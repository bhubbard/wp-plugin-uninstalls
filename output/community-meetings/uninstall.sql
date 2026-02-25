-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metgs_flush_rewrite_rules_flag');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

