-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('best_portfolio_grid_settings', 'wp_best_portfolio_msg');

