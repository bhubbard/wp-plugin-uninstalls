-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tn_menu_marginleft', 'tn_menu_marginright', 'tn_menu_margintop', 'tn_menu_marginbottom', 'tn_menu_customclass', 'tn_menu_customwidth', 'tn_menu_customwidth2', 'tn_tinynav_viewport', 'tn_tinynav_footer');

