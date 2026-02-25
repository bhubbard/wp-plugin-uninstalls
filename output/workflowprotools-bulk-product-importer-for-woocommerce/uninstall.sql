-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('workflowprotools_bulk_importer_analytics_enabled', 'workflowprotools_bulk_importer_version', 'workflowprotools_bulk_importer_success_imports', 'workflowprotools_bulk_importer_total_products_imported', 'workflowprotools_bulk_importer_site_info');

