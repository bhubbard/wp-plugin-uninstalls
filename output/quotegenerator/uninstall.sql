-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setting_qg17');
DELETE FROM wp_options WHERE option_name LIKE 'setting_qg%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_qg%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_qg%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_qg%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_qg%';

