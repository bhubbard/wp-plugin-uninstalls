-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('1y', '3y', '5y', 'expense_ratio', 'portfolio_turnover', 'category', 'sub_category', 'risk', 'is_first_time');

