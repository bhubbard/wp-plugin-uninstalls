-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gesttit_tam', 'gesttit_ang', 'gesttit_ver', 'gesttit_col', 'gesttit_ini', 'gesttit_font', 'gesttit_fond');

