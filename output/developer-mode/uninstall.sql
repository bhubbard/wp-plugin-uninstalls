-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwdm_plugins_hidden', 'jwdm_options', 'jwdm_menuitems_hidden', 'jwdm_version');

