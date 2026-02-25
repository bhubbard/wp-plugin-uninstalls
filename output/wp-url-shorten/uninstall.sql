-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eebmeShortURLeebapikey', 'eebme_plugin_do_activation_redirect', 'eebmeShortURLDomain');
DELETE FROM wp_options WHERE option_name LIKE 'eebmeShortURLnew%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eebmeShortURL_id', 'eebmeShortURLnew');
DELETE FROM wp_usermeta WHERE meta_key IN ('eebmeShortURL_id', 'eebmeShortURLnew');
DELETE FROM wp_termmeta WHERE meta_key IN ('eebmeShortURL_id', 'eebmeShortURLnew');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eebmeShortURL_id', 'eebmeShortURLnew');

