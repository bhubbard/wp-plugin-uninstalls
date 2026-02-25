-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evergage_account', 'evergage_dataset', 'evergage_track_anonymous', 'evergage_synchronous', 'evergage_promote', 'evergage_onmessage', 'evergage_siteconfig', 'evergage_apitoken', 'evergage_available_servers', 'evergage_connectivity_time');

