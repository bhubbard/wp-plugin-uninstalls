-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_portfolio_template', 'bp_portfolio_desc_max_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_portfolio_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_portfolio_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_portfolio_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_portfolio_url');

