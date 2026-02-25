-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uac_switcher', 'useragentcontentswitcher_useragent_tb', 'useragentcontentswitcher_useragent_sp', 'useragentcontentswitcher_useragent_mb');

