-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ehmc_show_summary', 'ehmc_show_table', 'ehmc_show_chart', 'ehmc_default_amount', 'ehmc_default_interest', 'ehmc_default_years', 'ehmc_label_amount', 'ehmc_label_interest', 'ehmc_label_years', 'ehmc_label_button_calculate', 'ehmc_label_button_reset', 'ehmc_delete_data_on_uninstall', 'ehmc_primary_color', 'ehmc_button_color_calculate', 'ehmc_button_color_reset', 'ehmc_table_header_color', 'ehmc_border_radius');

