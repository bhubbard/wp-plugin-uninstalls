-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('latest-update_conditionals', 'latest-update_before_text', 'latest-update_after_text', 'latest-update_date_format', 'latest-update_before_style', 'latest-update_after_style');
DELETE FROM wp_options WHERE option_name LIKE 'latest-update_%';

