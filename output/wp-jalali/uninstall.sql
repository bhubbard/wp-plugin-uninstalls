-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ztjalali_do_activation', 'ztjalali_options', 'ztjalali_version');
DELETE FROM wp_options WHERE option_name LIKE 'mps_jd_options_%';

