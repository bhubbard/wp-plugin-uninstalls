-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gbvc_mobile_breakpoint', 'gbvc_tablet_breakpoint', 'gbvc_disable_styles_on_non_gutenberg_pages');

