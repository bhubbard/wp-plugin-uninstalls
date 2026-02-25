-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p2mixi_username', 'p2mixi_password', 'p2mixi_id', 'p2mixi_header_default', 'p2mixi_footer_default', 'p2mixi_default');

