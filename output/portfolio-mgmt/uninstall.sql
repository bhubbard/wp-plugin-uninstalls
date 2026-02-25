-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wap8-cpt-slug', 'wap8-hct-slug', 'wap8-hct-singular', 'wap8-hct-plural', 'wap8-nhct-slug', 'wap8-nhct-singular', 'wap8-nhct-plural', 'wap8-cpt-singular', 'wap8-cpt-plural');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wap8_portfolio_feature', '_wap8_client_name', '_wap8_project_url', '_wap8_project_url_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wap8_portfolio_feature', '_wap8_client_name', '_wap8_project_url', '_wap8_project_url_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wap8_portfolio_feature', '_wap8_client_name', '_wap8_project_url', '_wap8_project_url_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wap8_portfolio_feature', '_wap8_client_name', '_wap8_project_url', '_wap8_project_url_text');

