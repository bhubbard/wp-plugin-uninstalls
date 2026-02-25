-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auth0_db_version', 'widget_wp_auth0_popup_widget', 'widget_wp_auth0_widget', 'widget_wp_auth0_social_amplification_widget', 'wp_auth0_client_grant_failed', 'wp_auth0_grant_types_failed', 'wp_auth0_client_grant_success', 'wp_auth0_grant_types_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_new_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_new_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_new_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_new_email');

