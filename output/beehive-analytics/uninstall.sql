-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beehive_version', 'beehive_owner_user', 'wdev-frash', 'psts_levels');

