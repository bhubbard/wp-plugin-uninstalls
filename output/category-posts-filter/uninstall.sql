-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catpostfilter_enable_filter', 'catpostfilter_bg_color', 'catpostfilter_text_color', 'catpostfilter_default_view');

