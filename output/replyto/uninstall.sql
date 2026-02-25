-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mail_replyto_migration_v200', 'wp_mail_replyto_email', 'wp_mail_replyto_name', 'wp_mail_replyto_contexts');

