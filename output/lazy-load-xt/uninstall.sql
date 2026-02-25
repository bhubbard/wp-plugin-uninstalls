-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lazyloadxt_general', 'lazyloadxt_effects', 'lazyloadxt_addons', 'lazyloadxt_advanced', 'lazyloadxt_version');
DELETE FROM wp_options WHERE option_name LIKE 'lazyloadxt_%';

