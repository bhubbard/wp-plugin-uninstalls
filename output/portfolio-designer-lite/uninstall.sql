-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('portfolio_designer_lite_settings', 'pdl_is_optin', 'admin_url', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('portfolio_lite_url', 'portfolio_lite_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('portfolio_lite_url', 'portfolio_lite_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('portfolio_lite_url', 'portfolio_lite_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('portfolio_lite_url', 'portfolio_lite_label');

