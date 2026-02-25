-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbls_border', 'wpbls_border_color', 'wpbls_border_radius', 'wpbls_order', 'wpbls_bg_color', 'wpbls_auto_play', 'wpbls_visible_items', 'wpbls_item_scrol', 'wpbls_puse_hover', 'wpbls_plugin_do_activation_redirect');

