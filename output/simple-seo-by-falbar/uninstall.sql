-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_falbar_ssbf_options_name');
DELETE FROM wp_options WHERE option_name LIKE '%_options_name';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_falbar_ssbf_title', '_falbar_ssbf_description', '_falbar_ssbf_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_falbar_ssbf_title', '_falbar_ssbf_description', '_falbar_ssbf_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_falbar_ssbf_title', '_falbar_ssbf_description', '_falbar_ssbf_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_falbar_ssbf_title', '_falbar_ssbf_description', '_falbar_ssbf_keywords');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_keywords';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_keywords';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_keywords';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_keywords';

