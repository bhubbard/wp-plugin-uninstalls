-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('immowp_estimation_settings', 'immowp_estimation_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_immowp_estimation_status', '_immowp_estimation_submission', '_immowp_estimation_result', '_immowp_estimation_public_id', '_immowp_estimation_admin_note', '_immowp_estimation_payload', '_immowp_estimation_remote_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_immowp_estimation_status', '_immowp_estimation_submission', '_immowp_estimation_result', '_immowp_estimation_public_id', '_immowp_estimation_admin_note', '_immowp_estimation_payload', '_immowp_estimation_remote_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_immowp_estimation_status', '_immowp_estimation_submission', '_immowp_estimation_result', '_immowp_estimation_public_id', '_immowp_estimation_admin_note', '_immowp_estimation_payload', '_immowp_estimation_remote_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_immowp_estimation_status', '_immowp_estimation_submission', '_immowp_estimation_result', '_immowp_estimation_public_id', '_immowp_estimation_admin_note', '_immowp_estimation_payload', '_immowp_estimation_remote_id');

