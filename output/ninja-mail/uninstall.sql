-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_forms_transactional_email_enabled', 'ninja_forms_transactional_email_debug');

