-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rdf_tools_endpoint_read_key', 'rdf_tools_endpoint_write_key', 'rdf_tools_endpoint_src_file');
DELETE FROM wp_options WHERE option_name LIKE 'rdf_tools_%';

