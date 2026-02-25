-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkit_icon_link', 'linkit_label_link', 'linkit_icon_clicks', 'linkit_label_clicks', 'linkit_icon_expires', 'linkit_label_expires', 'linkit_icon_status', 'linkit_label_status', 'linkit_color_active_bg', 'linkit_color_active_text', 'linkit_color_expired_bg', 'linkit_color_expired_text', 'linkit_color_maxclicks_bg', 'linkit_color_maxclicks_text', 'linkitex_expired_message', 'linkit_cleanup_on_uninstall', 'linkit_expired_message', 'linkitex_cleanup_on_uninstall');

