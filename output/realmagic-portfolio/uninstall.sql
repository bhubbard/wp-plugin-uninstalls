-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_portfolio_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smart_portfolio_client_name', '_smart_portfolio_project_date', '_smart_portfolio_project_url', '_smart_portfolio_project_address', '_smart_portfolio_external_url', '_smart_portfolio_open_in_new_tab', '_smart_portfolio_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smart_portfolio_client_name', '_smart_portfolio_project_date', '_smart_portfolio_project_url', '_smart_portfolio_project_address', '_smart_portfolio_external_url', '_smart_portfolio_open_in_new_tab', '_smart_portfolio_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smart_portfolio_client_name', '_smart_portfolio_project_date', '_smart_portfolio_project_url', '_smart_portfolio_project_address', '_smart_portfolio_external_url', '_smart_portfolio_open_in_new_tab', '_smart_portfolio_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smart_portfolio_client_name', '_smart_portfolio_project_date', '_smart_portfolio_project_url', '_smart_portfolio_project_address', '_smart_portfolio_external_url', '_smart_portfolio_open_in_new_tab', '_smart_portfolio_gallery');

