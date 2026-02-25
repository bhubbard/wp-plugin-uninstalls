-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hp_user_auth_methods', 'hp_facebook_app_id', 'hp_google_client_id');

