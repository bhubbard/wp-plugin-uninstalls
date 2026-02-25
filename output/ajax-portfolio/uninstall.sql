-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wapp_portfolio_options', 'wapp_portfolio_content_options_group');

