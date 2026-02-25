-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liveSupportiLicense', 'liveSupportiSkin', 'liveSupportiEmail', 'liveSupportiPassword', 'redirectToLiveSupportiAdminPage');

