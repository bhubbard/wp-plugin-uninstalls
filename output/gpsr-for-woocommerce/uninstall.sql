-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gpsr_instructions_file', '_gpsr_visibility_option', '_gpsr_instructions_type', '_gpsr_instructions_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gpsr_instructions_file', '_gpsr_visibility_option', '_gpsr_instructions_type', '_gpsr_instructions_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gpsr_instructions_file', '_gpsr_visibility_option', '_gpsr_instructions_type', '_gpsr_instructions_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gpsr_instructions_file', '_gpsr_visibility_option', '_gpsr_instructions_type', '_gpsr_instructions_text');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_toggle';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_toggle';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_toggle';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_toggle';

