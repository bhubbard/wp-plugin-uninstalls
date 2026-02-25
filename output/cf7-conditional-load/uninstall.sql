-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7cl_conditional_load', 'cf7cl_archive');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7cl_checkbox_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7cl_checkbox_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7cl_checkbox_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7cl_checkbox_value');

