-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssb_settings', 'ssb_buttons', 'ssb_showoncpt', 'ssb_icons_migrated');

