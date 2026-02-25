-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%0';
DELETE FROM wp_options WHERE option_name LIKE 'statify_targets_%';

