-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsh_enable', 'wpsh_bg_color', 'wpsh_text_color', 'wpsh_close_icon_color', 'wpsh_closable', 'wpsh_position', 'wpsh_content', 'wpsh_where', 'wpsh_auto_close', 'wpsh_page_ids');

