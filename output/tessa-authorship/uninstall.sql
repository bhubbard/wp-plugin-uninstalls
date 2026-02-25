-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tasrpas_settings', '_mpt_necessity', '_mpt_exists');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tasrpasids', '_saprsatids', '_email_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tasrpasids', '_saprsatids', '_email_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tasrpasids', '_saprsatids', '_email_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tasrpasids', '_saprsatids', '_email_link');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

