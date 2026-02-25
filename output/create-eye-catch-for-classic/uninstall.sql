-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eyeCatchUrl', 'totalLine', 'oneLineTextLength', 'fontSize', 'topMargin', 'leftMargin', 'fontColor');

