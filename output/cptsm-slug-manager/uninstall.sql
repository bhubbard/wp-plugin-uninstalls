-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'cptsm_slug_%';
DELETE FROM wp_options WHERE option_name LIKE 'cptsm_slug_delete_%';
DELETE FROM wp_options WHERE option_name LIKE 'cptsm_old_slug_%';

