-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('banhammer_armory', 'banhammer_tower', 'banhammer_settings', 'banhammer_secret_key', 'banhammer-dismiss-notice');

