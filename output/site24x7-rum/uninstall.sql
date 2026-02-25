-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s247RumKeyDB', 's247Datacentre', 's247ReplayToggle', 'maskInputText', 'maskAllText');

