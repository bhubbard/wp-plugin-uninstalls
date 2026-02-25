-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('technology_language', 'portfolio_client_name', 'portfolio_project_type', 'android_project_url', 'ios_project_url', 'website_project_url', 'spmpcl_project_portfolio_img', 'spmpcl_portfolio_feature');
DELETE FROM wp_usermeta WHERE meta_key IN ('technology_language', 'portfolio_client_name', 'portfolio_project_type', 'android_project_url', 'ios_project_url', 'website_project_url', 'spmpcl_project_portfolio_img', 'spmpcl_portfolio_feature');
DELETE FROM wp_termmeta WHERE meta_key IN ('technology_language', 'portfolio_client_name', 'portfolio_project_type', 'android_project_url', 'ios_project_url', 'website_project_url', 'spmpcl_project_portfolio_img', 'spmpcl_portfolio_feature');
DELETE FROM wp_commentmeta WHERE meta_key IN ('technology_language', 'portfolio_client_name', 'portfolio_project_type', 'android_project_url', 'ios_project_url', 'website_project_url', 'spmpcl_project_portfolio_img', 'spmpcl_portfolio_feature');

