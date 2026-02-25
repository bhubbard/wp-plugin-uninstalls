-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apwpultimate_ultimate_options', 'apwpultimate_ultimate_plugin_version', 'apwpultimate_ultimate_install_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%artist_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%artist_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%artist_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%artist_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%audio_file';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%audio_file';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%audio_file';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%audio_file';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%duration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%duration';

