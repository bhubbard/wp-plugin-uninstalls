-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shayanweb_fontchanger_options_adminnotice_ignore_options', 'shayanweb_fontchanger_options');

