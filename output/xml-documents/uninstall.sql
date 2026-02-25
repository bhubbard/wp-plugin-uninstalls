-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xmldoc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xml', '_wp_attached_file', '_xslt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xml', '_wp_attached_file', '_xslt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xml', '_wp_attached_file', '_xslt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xml', '_wp_attached_file', '_xslt');

