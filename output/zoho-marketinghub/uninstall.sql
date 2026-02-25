-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zmhub_connect_time', 'zmhub_rated', 'zma_notice', 'zmhub_script', 'zmhub_script_setting', 'zma_custom_banner_shown', 'zmhub_script_setting_setting', 'zmhub_domname', 'zmhub_token_details', 'zmhub_user_email', 'zmhub_error_msg', 'zmhub_integration', 'zmhub_store_stats', 'zmhub_intergration_details', 'zmhub_optin_setting', 'zma_version', 'zmh_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zma_newsletter_subscription');
DELETE FROM wp_usermeta WHERE meta_key IN ('zma_newsletter_subscription');
DELETE FROM wp_termmeta WHERE meta_key IN ('zma_newsletter_subscription');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zma_newsletter_subscription');

