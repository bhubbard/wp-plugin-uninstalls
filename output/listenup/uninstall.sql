-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('listenup_options', 'listenup_pronunciation_rules');
DELETE FROM wp_options WHERE option_name LIKE 'listenup_signed_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_listenup_mp3_cloud_path', '_listenup_chunked_audio', '_listenup_audio', '_listenup_wav_cloud_path', '_listenup_mp3_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_listenup_mp3_cloud_path', '_listenup_chunked_audio', '_listenup_audio', '_listenup_wav_cloud_path', '_listenup_mp3_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_listenup_mp3_cloud_path', '_listenup_chunked_audio', '_listenup_audio', '_listenup_wav_cloud_path', '_listenup_mp3_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_listenup_mp3_cloud_path', '_listenup_chunked_audio', '_listenup_audio', '_listenup_wav_cloud_path', '_listenup_mp3_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cloud_path';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cloud_path';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cloud_path';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cloud_path';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_size';

