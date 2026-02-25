-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osa_stick_elements', 'osa_stick_offset', 'osa_unstick', 'osa_settings');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE 'osa_%';

