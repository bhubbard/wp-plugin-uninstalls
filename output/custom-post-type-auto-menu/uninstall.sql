-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpt_auto_menu_settings', 'cpt_auto_menu_cpt_list');

