-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sv_core_expert_mode');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

