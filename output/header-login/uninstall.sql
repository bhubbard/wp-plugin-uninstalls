-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hl_userLogin_Header', 'hl_userEmail_Header', 'hl_userFirstname_Header', 'hl_userLastname_Header', 'hl_userNicename_Header', 'hl_userDisplayname_Header', 'hl_authHeader', 'hl_logoutURL', 'hl_settingsSaved', 'hl_createNewUser', 'hl_defaultRole');
DELETE FROM wp_options WHERE option_name LIKE 'hl_createNewUser%';
DELETE FROM wp_options WHERE option_name LIKE 'hl_defaultRole%';

