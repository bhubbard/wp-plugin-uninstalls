-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_count', 'cf7_mch_end');
DELETE FROM wp_options WHERE option_name LIKE 'cf7_mch_%';

