-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcrebtp_good_luck_admin_notice', 'wcrebtp_check_if_installed');

