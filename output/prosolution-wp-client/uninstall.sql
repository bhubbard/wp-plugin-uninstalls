-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prosolwpclient_additionalsite', 'prosolwpclient_frontend', 'prosolwpclient_sync_time', 'prosolwpclient_api_config', 'prosolwpclient_designtemplate', 'prosolwpclient_encryptionkey', 'prosolwpclient_languages', 'prosolwpclient_vectorkey', 'prosolwpclient_applicationform', 'prosolwpclient_privacypolicy');

