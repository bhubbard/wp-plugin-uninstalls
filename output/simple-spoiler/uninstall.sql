-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_spoiler_bg_wrap', 'simple_spoiler_bg_body', 'simple_spoiler_br_color');

