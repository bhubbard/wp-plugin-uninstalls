-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('userlogs_welcome', 'userlogs_cron_cycle', 'userlogs_activation_redirect_transient');

