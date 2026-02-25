-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urgcw_urgency_countdown_timers', 'urgcw_urgency_countdown_animation', 'urgcw_urgency_countdown_look', 'urgcw_urgency_font_color', 'urgcw_urgency_font_family', 'urgcw_urgency_bg_color', 'urgcw_urgency_widgets', 'urgcw_global_urgency_widget_enabled', 'urgcw_show_woocommerce_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales');

