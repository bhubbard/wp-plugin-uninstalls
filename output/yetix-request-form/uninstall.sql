-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yetix_request__last_token_connection_subdomain', 'yetix_request__version', 'yetix_request__activation_trigger');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yetix_request__zendesk_user_id', 'yetix_request__zendesk_user_oauth_token', 'yetix_request__zendesk_user_meta', 'yetix_request__zendesk_user_update', 'yetix_request__zendesk_user_last_login', 'yetix_request__wordpress_user_last_connexion', 'default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('yetix_request__zendesk_user_id', 'yetix_request__zendesk_user_oauth_token', 'yetix_request__zendesk_user_meta', 'yetix_request__zendesk_user_update', 'yetix_request__zendesk_user_last_login', 'yetix_request__wordpress_user_last_connexion', 'default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('yetix_request__zendesk_user_id', 'yetix_request__zendesk_user_oauth_token', 'yetix_request__zendesk_user_meta', 'yetix_request__zendesk_user_update', 'yetix_request__zendesk_user_last_login', 'yetix_request__wordpress_user_last_connexion', 'default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yetix_request__zendesk_user_id', 'yetix_request__zendesk_user_oauth_token', 'yetix_request__zendesk_user_meta', 'yetix_request__zendesk_user_update', 'yetix_request__zendesk_user_last_login', 'yetix_request__wordpress_user_last_connexion', 'default_password_nag');

