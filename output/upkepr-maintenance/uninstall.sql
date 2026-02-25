-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upkeprvalidationkeycstm', 'upkpr_vulnerability_all', 'upkpr_vulnerability_theme', 'upkpr_vulnerability_core', 'upkpr_vulnerability_plugin', 'upkepr-maintenance-json', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'upkpr_vulnerability_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('upkprtkn');
DELETE FROM wp_usermeta WHERE meta_key IN ('upkprtkn');
DELETE FROM wp_termmeta WHERE meta_key IN ('upkprtkn');
DELETE FROM wp_commentmeta WHERE meta_key IN ('upkprtkn');

