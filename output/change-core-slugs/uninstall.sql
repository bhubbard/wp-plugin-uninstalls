-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'ccs_feed_base');
DELETE FROM wp_options WHERE option_name LIKE 'ccs_%';

