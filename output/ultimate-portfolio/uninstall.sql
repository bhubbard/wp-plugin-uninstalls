-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimate_portfolio_form_data', 'ultimate_portfolio_default_image_id', 'ultimate_portfolio_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ultimate_portfolio_shortcodes');
DELETE FROM wp_usermeta WHERE meta_key IN ('ultimate_portfolio_shortcodes');
DELETE FROM wp_termmeta WHERE meta_key IN ('ultimate_portfolio_shortcodes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ultimate_portfolio_shortcodes');

