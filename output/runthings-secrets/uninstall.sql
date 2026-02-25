-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('runthings_secrets_db_version', 'runthings_secrets_add_page', 'runthings_secrets_created_page', 'runthings_secrets_view_page', 'runthings_secrets_default_expiration', 'runthings_secrets_default_max_views', 'runthings_secrets_enqueue_form_styles', 'runthings_secrets_recaptcha_enabled', 'runthings_secrets_recaptcha_public_key', 'runthings_secrets_recaptcha_private_key', 'runthings_secrets_recaptcha_score', 'runthings_secrets_rate_limit_enabled', 'runthings_secrets_rate_limit_tries_add', 'runthings_secrets_rate_limit_tries_created', 'runthings_secrets_rate_limit_tries_view', 'runthings_secrets_rate_limit_tries_delete', 'runthings_secrets_rate_limit_exemption_enabled', 'runthings_secrets_rate_limit_exemption_roles', 'runthings_secrets_stats_total_secrets', 'runthings_secrets_stats_total_views', 'runthings_secrets_first_run_completed', 'runthings_secrets_encryption_key');

