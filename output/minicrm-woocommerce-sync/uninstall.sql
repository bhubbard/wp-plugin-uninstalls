-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_based_on', 'minicrm_plugin_activated', 'minicrm_project_ids_cache');

