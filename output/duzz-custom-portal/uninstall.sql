-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duzz_settings_email_settings_field_data', 'duzz_last_saved_email', 'duzz_last_saved_name', 'duzz_last_saved_company_name', 'duzz_has_run_install_process', 'duzz_acf_settings_acf_keys_list_field_data', 'duzz_trashed_messages', 'duzz_settings_project_page_field_data', 'recently_activated', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_args';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_visibility', 'payment_confirm', 'total_aftertax_sum', 'associated_comment', 'invoice_type', 'comment_post_type', 'first_name', 'line_items', 'sales_tax', 'invoice_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_visibility', 'payment_confirm', 'total_aftertax_sum', 'associated_comment', 'invoice_type', 'comment_post_type', 'first_name', 'line_items', 'sales_tax', 'invoice_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_visibility', 'payment_confirm', 'total_aftertax_sum', 'associated_comment', 'invoice_type', 'comment_post_type', 'first_name', 'line_items', 'sales_tax', 'invoice_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_visibility', 'payment_confirm', 'total_aftertax_sum', 'associated_comment', 'invoice_type', 'comment_post_type', 'first_name', 'line_items', 'sales_tax', 'invoice_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

