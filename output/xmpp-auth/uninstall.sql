-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imauth_configuration', 'imauth_transactions', 'imauth_dns_srv_cache');
DELETE FROM wp_options WHERE option_name LIKE 'imauth_configuration_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jid');
DELETE FROM wp_usermeta WHERE meta_key IN ('jid');
DELETE FROM wp_termmeta WHERE meta_key IN ('jid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jid');

