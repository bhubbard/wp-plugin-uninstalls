-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'ainisa_smart_reviewer_options', 'ainisa_smart_reviewer_options');

