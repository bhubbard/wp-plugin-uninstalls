-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('IQquotationpage_template_IQmapskey', 'IQquotationpage_template_IQcountrycode', 'IQquotationpage_template_IQisdirectory', 'IQquotationpage_template_IQassetstodisplay');
DELETE FROM wp_options WHERE option_name LIKE '%_IQcountrycode';
DELETE FROM wp_options WHERE option_name LIKE '%_IQmapskey';
DELETE FROM wp_options WHERE option_name LIKE '%_IQshowaboutreviews';
DELETE FROM wp_options WHERE option_name LIKE '%_IQassetstodisplay';
DELETE FROM wp_options WHERE option_name LIKE '%_IQisdirectory';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iqpageproperties');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iqpageproperties');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iqpageproperties');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iqpageproperties');

