-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_nasaads_query_importer-token', 'wp_nasaads_query_importer-template', 'wp_nasaads_query_importer-template_start', 'wp_nasaads_query_importer-template_stop', 'wp_nasaads_query_importer-numrecords', 'wp_nasaads_query_importer-empty_list', 'wp_nasaads_query_importer-acknowledge', 'wp_nasaads_query_importer-valid_token');

