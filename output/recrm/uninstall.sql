-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recrm_estate_props', 'recrm_agent_props', 'recrm_options', 'recrm_estate_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'recrm_hash_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'recrm_hash_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'recrm_hash_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recrm_hash_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'recrm_gallery_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'recrm_gallery_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'recrm_gallery_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'recrm_gallery_%';

