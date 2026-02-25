-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opio_active', 'widget_custom_html', 'widget_block', 'opio_debug_mode');

