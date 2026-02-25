-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpchords_toggle_fontsize', 'wpchords_toggle_transpose', 'wpchords_toggle_alternating', 'wpchords_toggle_print', 'wpchords_string_printfooter', 'wpchords_string_deamp', 'wpchords_toggle_monospace');

