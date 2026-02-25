-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('IQdatasheet_template_IQmaximages', 'IQdatasheet_template_IQshowthmbnails', 'IQdatasheet_template_IQshowaboutreviews', 'IQdatasheet_template_IQshowassetname', 'IQdatasheet_template_IQshowprices', 'IQdatasheet_template_IQshowdescription', 'IQdatasheet_template_IQshowimages', 'IQdatasheet_template_IQshowvideo', 'IQdatasheet_template_IQshowassetmetadata');
DELETE FROM wp_options WHERE option_name LIKE '%_IQmaximages';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowthmbnails';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowaboutreviews';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowassetname';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowprices';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowdescription';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowimages';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowvideo';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowassetmetadata';

