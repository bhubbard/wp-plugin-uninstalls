-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdevents_installed', 'geodir_event_version', 'geodir_event_db_version', 'geodirectory_db_version', 'geodirevents_db_version', 'geodirectory_version', 'geodir_settings', 'recently_activated', '_geodir_event_activation_redirect', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%category_installed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('event_rsvp_yes', 'event_rsvp_maybe');
DELETE FROM wp_usermeta WHERE meta_key IN ('event_rsvp_yes', 'event_rsvp_maybe');
DELETE FROM wp_termmeta WHERE meta_key IN ('event_rsvp_yes', 'event_rsvp_maybe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('event_rsvp_yes', 'event_rsvp_maybe');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

