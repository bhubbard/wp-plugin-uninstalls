-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fal_allow_tracking', 'fal_tracker_last_send', '_surror_tools_town_secret', 'surror_tools_town_info', 'fal_ask_again');
DELETE FROM wp_options WHERE option_name LIKE 'surror_notices_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'surror_notices_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'surror_notices_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'surror_notices_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'surror_notices_dismissed_%';

