-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tdpi_java_location', 'tdpi_tika_jar_location', 'tika_wp_content', 'tdpi_supported_ext', 'tdpi_index_attachments', 'tdpi_enable_tdpi_cpt');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

