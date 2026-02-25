-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doroto_settings', 'doroto_version', 'doroto_show_app_notice', 'doroto_show_activation_notice', 'doroto_main_page_id', 'doroto_help_page_id', 'doroto_example_page_id', 'doroto_privacy_policy_page_id', 'doroto_terms_of_service_page_id', 'doroto_output_form');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('doroto_presentation', 'doroto_access_token', 'doroto_access_token_expiration', 'doroto_refresh_token', 'doroto_refresh_token_expiration', 'first_name', 'last_name', 'doroto_filter_results', 'doroto_output_form', 'doroto_filter_tournaments', 'doroto_creator');
DELETE FROM wp_usermeta WHERE meta_key IN ('doroto_presentation', 'doroto_access_token', 'doroto_access_token_expiration', 'doroto_refresh_token', 'doroto_refresh_token_expiration', 'first_name', 'last_name', 'doroto_filter_results', 'doroto_output_form', 'doroto_filter_tournaments', 'doroto_creator');
DELETE FROM wp_termmeta WHERE meta_key IN ('doroto_presentation', 'doroto_access_token', 'doroto_access_token_expiration', 'doroto_refresh_token', 'doroto_refresh_token_expiration', 'first_name', 'last_name', 'doroto_filter_results', 'doroto_output_form', 'doroto_filter_tournaments', 'doroto_creator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('doroto_presentation', 'doroto_access_token', 'doroto_access_token_expiration', 'doroto_refresh_token', 'doroto_refresh_token_expiration', 'first_name', 'last_name', 'doroto_filter_results', 'doroto_output_form', 'doroto_filter_tournaments', 'doroto_creator');

