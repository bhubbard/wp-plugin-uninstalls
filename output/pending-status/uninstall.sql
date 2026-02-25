-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r34ps_notification_recipients', 'r34ps_notification_subject', 'r34ps_notification_message', 'r34ps_version', 'r34ps_previous_version', 'r34ps_deferred_admin_notices');

