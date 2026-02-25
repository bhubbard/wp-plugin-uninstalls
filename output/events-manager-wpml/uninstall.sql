-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_sync_translations_multisite_progress', 'em_wpml_version', 'em_wpml_disable_recurrence_notice', 'dbem_events_page', 'dbem_rsvp_enabled', 'dbem_version');

