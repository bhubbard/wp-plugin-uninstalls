-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sailthru_content_settings', 'sailthru_setup_complete', 'sailthru_setup_options', 'sailthru_plugin_version', 'sailthru_forms_options', 'sailthru_forms_key', 'sailthru_concierge_options', 'sailthru_scout_options', 'sailthru_override_wp_mail', 'sailthru_integrations_options', 'sailthru_api_validated', 'sailthru_settings', 'sailthru_customfields_order', 'sailthru_customfield_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sailthru_post_expiration', 'sailthru_meta_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('sailthru_post_expiration', 'sailthru_meta_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('sailthru_post_expiration', 'sailthru_meta_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sailthru_post_expiration', 'sailthru_meta_tags');

