-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf_title', 'cf_app_id', 'cf_secret_key', 'cf_payment_mode', 'cf_success_message');

