-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('license_key', 'gf_last_sync', 'gf_datas', 'cloud_nr', 'consumer_key', 'secret_key', 'username', 'password', 'store_articles');

