-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shift8_portfolio_image', 'shift8_portfolio_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('shift8_portfolio_image', 'shift8_portfolio_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('shift8_portfolio_image', 'shift8_portfolio_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shift8_portfolio_image', 'shift8_portfolio_gallery');

