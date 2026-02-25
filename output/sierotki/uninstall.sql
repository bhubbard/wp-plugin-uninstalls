-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iworks_orphans_options_import_messages', 'iworks_orphan_own_orphans');
DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab';
DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%flush_rules';
DELETE FROM wp_options WHERE option_name LIKE 'iworks_orphan_%';

