-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elex_ppct_check_field', 'elex_ppct_select_all_pages_value', 'elex_ppct_pages', 'elex_ppct_prefix_field', ' elex_ppct_suffix_field', 'elex_ppct_discount_type', 'elex_ppct_discount_amount', 'ppct_general_settings', 'elex_ppct_suffix_field', 'elex_ppct_migration', 'elex_ppct_discount_percent', 'elex_ppct_customization_data', 'elex_ppct_select_all_categories_id', 'elex_ppct_categories', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

