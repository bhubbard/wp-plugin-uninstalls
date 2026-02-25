-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ytSubscribe_channel', 'ytSubscribe_theme', 'ytSubscribe_count', 'ytSubscribe_layout', 'ytSubscribe_dom', 'ytSubscribe_subscribe_text', 'ytSubscribe_customcss');

