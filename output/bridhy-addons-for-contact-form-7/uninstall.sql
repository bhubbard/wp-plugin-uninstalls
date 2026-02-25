-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7vb_installed', 'cf7vb_version');
DELETE FROM wp_options WHERE option_name LIKE '%_widgets';
DELETE FROM wp_options WHERE option_name LIKE '%_styles';
DELETE FROM wp_options WHERE option_name LIKE '%_generated_css';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7vb_app_id', 'cf7vb_generated_css', 'cf7vb_redirect_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7vb_app_id', 'cf7vb_generated_css', 'cf7vb_redirect_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7vb_app_id', 'cf7vb_generated_css', 'cf7vb_redirect_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7vb_app_id', 'cf7vb_generated_css', 'cf7vb_redirect_enable');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7vb_redirect_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7vb_redirect_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7vb_redirect_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7vb_redirect_%';

