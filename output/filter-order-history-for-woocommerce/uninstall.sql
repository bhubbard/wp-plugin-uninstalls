-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdevs_foh_column_order', 'wdevs_foh_selected_fields');

