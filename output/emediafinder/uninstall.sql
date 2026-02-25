-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emediafinderdb_cdn_prefix', 'emediafinderdb_entermediakey', 'emediafinderdb_collectionid', 'emediafinderdb_enabled_users', 'emediafinderdb_adminkey', 'emediafinderdb_main_server', 'emediafinderdb-publish_options', 'emediafinderdb_email');

