-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecookies_hostriver_google_tag_manager_id', 'ecookies_hostriver_selected_layout', 'ecookies_hostriver_modalPosition', 'ecookies_hostriver_disable_page_interaction', 'ecookies_hostriver_flip_buttons', 'ecookies_hostriver_weight_buttons', 'ecookies_hostriver_theme_color');

