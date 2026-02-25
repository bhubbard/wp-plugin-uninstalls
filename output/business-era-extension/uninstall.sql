-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('portfolio_type', 'project_link', 'position', 'email', 'facebook', 'twitter', 'gplus', 'linkedin', 'instagram', 'company');
DELETE FROM wp_usermeta WHERE meta_key IN ('portfolio_type', 'project_link', 'position', 'email', 'facebook', 'twitter', 'gplus', 'linkedin', 'instagram', 'company');
DELETE FROM wp_termmeta WHERE meta_key IN ('portfolio_type', 'project_link', 'position', 'email', 'facebook', 'twitter', 'gplus', 'linkedin', 'instagram', 'company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('portfolio_type', 'project_link', 'position', 'email', 'facebook', 'twitter', 'gplus', 'linkedin', 'instagram', 'company');

