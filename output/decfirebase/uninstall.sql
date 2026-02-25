-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('decfirebase_url', 'decfirebase_secrets', '_decfirebase_activation_redirect');

