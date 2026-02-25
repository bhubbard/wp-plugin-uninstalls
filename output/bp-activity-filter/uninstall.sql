-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_activity_filter_default', 'bp_activity_filter_profile_default', 'bp_activity_filter_hidden', 'bp_activity_filter_cpt_settings', 'bp_activity_filter_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bp_activity_filter_activity_id', '_bp_activity_filter_recorded');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bp_activity_filter_activity_id', '_bp_activity_filter_recorded');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bp_activity_filter_activity_id', '_bp_activity_filter_recorded');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bp_activity_filter_activity_id', '_bp_activity_filter_recorded');

