-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderplugin_wperror_mail', 'wonderplugin_wperror_maxlength');

