-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccollapse_truncate_mode', 'ccollapse_truncate_amount', 'ccollapse_truncate_speed', 'ccollapse_show_more_text', 'ccollapse_hide_text');

