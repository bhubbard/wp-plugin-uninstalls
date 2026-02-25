-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mediavidi_https_social_migration', 'mediavidi_https_social_migration_pro');

