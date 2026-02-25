-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('opsrblt_related_runbook_id', 'opsrblt_what_happened', 'opsrblt_what_we_did', 'opsrblt_what_fixed_it');
DELETE FROM wp_usermeta WHERE meta_key IN ('opsrblt_related_runbook_id', 'opsrblt_what_happened', 'opsrblt_what_we_did', 'opsrblt_what_fixed_it');
DELETE FROM wp_termmeta WHERE meta_key IN ('opsrblt_related_runbook_id', 'opsrblt_what_happened', 'opsrblt_what_we_did', 'opsrblt_what_fixed_it');
DELETE FROM wp_commentmeta WHERE meta_key IN ('opsrblt_related_runbook_id', 'opsrblt_what_happened', 'opsrblt_what_we_did', 'opsrblt_what_fixed_it');

