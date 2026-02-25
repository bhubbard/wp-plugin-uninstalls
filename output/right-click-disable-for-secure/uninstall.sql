-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcdforsalertnoyes', 'rcdalerttext', 'rcdfors-csjkey', 'rcdforsftwelvekey', 'rcdfors-csckey', 'rcdforskey-crtlshifti', 'rcdfors-cukey', 'rcdfors_plugin_do_activate');

