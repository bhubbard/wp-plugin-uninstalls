-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aklamatorFVChannelURL', 'aklamatorFVApplicationID', 'aklamatorFVPoweredBy', 'aklamatorFVSingleWidgetID', 'aklamatorFVPageWidgetID', 'aklamatorFVSingleWidgetTitle', 'aklamatorFVShowOrDontShow', 'aklamatorFVPhotoURL', 'aklamatorFVintroURL');

