-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uav_opt_deadline', 'uav_opt_deadline_warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uav_opt_resent_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('uav_opt_resent_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('uav_opt_resent_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uav_opt_resent_count');

