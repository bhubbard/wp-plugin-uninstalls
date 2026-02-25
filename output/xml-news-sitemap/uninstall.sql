-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gns_xml_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gns_xml_include', 'gns_xml_pubaccess', 'gns_xml_genres', 'gns_xml_publanguage');
DELETE FROM wp_usermeta WHERE meta_key IN ('gns_xml_include', 'gns_xml_pubaccess', 'gns_xml_genres', 'gns_xml_publanguage');
DELETE FROM wp_termmeta WHERE meta_key IN ('gns_xml_include', 'gns_xml_pubaccess', 'gns_xml_genres', 'gns_xml_publanguage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gns_xml_include', 'gns_xml_pubaccess', 'gns_xml_genres', 'gns_xml_publanguage');

