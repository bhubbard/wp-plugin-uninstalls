-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ogtype', 'fbimage', 'ogdescription', 'fbadmin', 'fbpageid', 'fbappid');

