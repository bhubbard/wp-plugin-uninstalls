-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vmpt_title', 'vmpt_setting', 'vmpt_setting1', 'vmpt_setting2', 'vmpt_setting3', 'vmpt_setting4');

