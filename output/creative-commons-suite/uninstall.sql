-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc-suite_conditionals', 'cc-suite_tagline', 'cc-suite_usetargetblank', 'cc-suite_style_before', 'cc-suite_style_after');
DELETE FROM wp_options WHERE option_name LIKE 'cc-suite_%';

