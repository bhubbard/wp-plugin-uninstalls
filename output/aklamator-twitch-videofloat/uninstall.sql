-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aklamatorTwitchFVChannel', 'aklamatorTwitchFVApplicationID', 'aklamatorTwitchFVPoweredBy', 'aklamatorTwitchFVSingleWidgetID', 'aklamatorTwitchFVPageWidgetID', 'aklamatorTwitchFVSingleWidgetTitle', 'aklamatorTwitchFVShowOrDontShow', 'aklamatorTwitchFVPhotoURL');

