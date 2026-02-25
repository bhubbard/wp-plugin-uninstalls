-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liberachat_nick', 'liberachat_server', 'liberachat_chan', 'liberachat_style', 'liberachat_height', 'liberachat_width');

