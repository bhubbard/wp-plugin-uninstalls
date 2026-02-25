-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin_ssl_use_ssl', 'admin_ssl_use_shared', 'admin_ssl_shared_url', 'admin_ssl_additional_urls', 'admin_ssl_secure_users_only', 'admin_ssl_config_parent', 'admin_ssl_https_key', 'admin_ssl_https_value');

