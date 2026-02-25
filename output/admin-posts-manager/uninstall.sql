-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apm_dismiss_feedback', 'apm_plugin_activated', 'apm_maybe_later_feedback');

