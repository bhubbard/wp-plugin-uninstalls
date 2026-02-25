-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ntdbCurrentVersion', 'ntdbCurrentType', 'optTinyDB');
DELETE FROM wp_options WHERE option_name LIKE 'optIsTitle_%';
DELETE FROM wp_options WHERE option_name LIKE 'optFieldsSeparator_%';
DELETE FROM wp_options WHERE option_name LIKE 'optSearchField_%';
DELETE FROM wp_options WHERE option_name LIKE 'optPartSearch_%';
DELETE FROM wp_options WHERE option_name LIKE 'optCaseSearch_%';
DELETE FROM wp_options WHERE option_name LIKE 'optShowHead_%';
DELETE FROM wp_options WHERE option_name LIKE 'optLineSpace_%';
DELETE FROM wp_options WHERE option_name LIKE 'optNewPage_%';
DELETE FROM wp_options WHERE option_name LIKE 'optImgPos_%';
DELETE FROM wp_options WHERE option_name LIKE 'optImgWidth_%';

