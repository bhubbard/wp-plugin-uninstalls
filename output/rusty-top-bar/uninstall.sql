-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rusty_topbar_active', 'rusty_topbar_bg', 'rusty_topbar_color', 'rusty_topbar_scroll', 'rusty_topbar_text');

