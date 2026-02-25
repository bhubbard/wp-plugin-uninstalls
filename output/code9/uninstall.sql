-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('code9_security_anti_brute_force', 'code9_security_key', 'code9_security_iv', 'code9_security_2_step', 'code9_security_2_step_blockingtime');
DELETE FROM wp_options WHERE option_name LIKE '%[]capcha1';
DELETE FROM wp_options WHERE option_name LIKE '%[]capcha2';
DELETE FROM wp_options WHERE option_name LIKE '%[]attemp';
DELETE FROM wp_options WHERE option_name LIKE 'code9_security_auth_%';

