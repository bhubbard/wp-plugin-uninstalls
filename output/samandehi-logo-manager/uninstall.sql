-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Samandehi_Logo', 'Samandehi_new_ver_notice_applied_0_2', 'Samandehi_logo');

