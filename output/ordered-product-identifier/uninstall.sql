-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_feed', 'ced_feed_opi');
DELETE FROM wp_options WHERE option_name LIKE '%_compat';
DELETE FROM wp_options WHERE option_name LIKE '%_wpinvdl';
DELETE FROM wp_options WHERE option_name LIKE '%_enbl';
DELETE FROM wp_options WHERE option_name LIKE '%_prefix';
DELETE FROM wp_options WHERE option_name LIKE '%_radio_opt';

