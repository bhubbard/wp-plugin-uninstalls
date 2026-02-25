-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('portfolio_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone', '_pending_to_use_', '_wp_page_template', 'opal_portfolio_color', 'opal_portfolio_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone', '_pending_to_use_', '_wp_page_template', 'opal_portfolio_color', 'opal_portfolio_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone', '_pending_to_use_', '_wp_page_template', 'opal_portfolio_color', 'opal_portfolio_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone', '_pending_to_use_', '_wp_page_template', 'opal_portfolio_color', 'opal_portfolio_desc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%avatar';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_latitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_longitude';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%gallery';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%gallery';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%gallery';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%gallery';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%avatar_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%avatar_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%avatar_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%avatar_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

