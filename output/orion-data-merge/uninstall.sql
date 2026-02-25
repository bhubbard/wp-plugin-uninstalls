-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wms-db-result-key', 'wms-remote-site-info', 'wms-last-remote-site', 'wms-site-key', 'msd_path', 'wms-results-sqlite-file-path');

