-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'elex_settings_tab_fields_data', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'elex_gpf_cron_projects');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

