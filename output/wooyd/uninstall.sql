-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooid_script_cart_widget', 'wooyd_widget_geo', 'wooyd_widget_info', 'wooyd_widget_card', 'wooid_script_track_widget', 'wooyd_script_track_widget');

