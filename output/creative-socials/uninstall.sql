-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mega_socials_setting', 'mega_socials_setting_var', 'mega_socials_setting_name');

