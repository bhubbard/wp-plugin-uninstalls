-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('echodash_endpoint', 'echodash_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_status', 'echodash_bp_profile_complete', 'echodash_settings', '_gamipress_congratulations_text', '_gamipress_points_to_unlock', '_gamipress_points', '_gamipress_earned_by');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_status', 'echodash_bp_profile_complete', 'echodash_settings', '_gamipress_congratulations_text', '_gamipress_points_to_unlock', '_gamipress_points', '_gamipress_earned_by');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_status', 'echodash_bp_profile_complete', 'echodash_settings', '_gamipress_congratulations_text', '_gamipress_points_to_unlock', '_gamipress_points', '_gamipress_earned_by');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_status', 'echodash_bp_profile_complete', 'echodash_settings', '_gamipress_congratulations_text', '_gamipress_points_to_unlock', '_gamipress_points', '_gamipress_earned_by');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_new_points';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_new_points';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_new_points';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_new_points';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_points';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_points';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_points';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_points';

