-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yop_poll_old_version', 'yop_poll_version', 'yop_poll_settings', 'yop_poll_options', 'yop_poll_pro', 'external_updates-yop-poll', 'yop_poll_ajax_importer');

