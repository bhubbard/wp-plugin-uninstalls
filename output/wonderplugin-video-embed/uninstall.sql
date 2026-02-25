-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderplugin_videoembed_keepdata', 'wonderplugin_videoembed_disableupdate', 'wonderplugin_videoembed_addjstofooter', 'wonderplugin_videoembed_zindex', 'wonderplugin_videoembed_information');

