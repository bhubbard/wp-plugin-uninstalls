-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmk_portfolio_templates', 'wpmk_portfolio_current_templates', 'wpmk_portfolio_enable_filter', 'wpmk_portfolio_filter_sort', 'wpmk_portfolio_template_css', 'wpmk_portfolio_animate_status', 'wpmk_portfolio_current_animate', 'wpmk_portfolio_current_animate_delay', 'wpmk_portfolio_current_animate_speed', 'wpmk_portfolio_animate', 'wpmk_portfolio_animate_delay', 'wpmk_portfolio_animate_speed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmk_portfolio_project');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmk_portfolio_project');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmk_portfolio_project');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmk_portfolio_project');

