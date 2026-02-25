-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twae_hide_upgrade_notice_editor', 'twe_hide_migration_notice');

