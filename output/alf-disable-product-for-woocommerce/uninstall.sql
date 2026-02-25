-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alf_dp_button_text', 'alf_dp_msg_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alf_dp_disabled', '_alf_dp_schedule', '_alf_dp_btn_text', '_alf_dp_msg_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alf_dp_disabled', '_alf_dp_schedule', '_alf_dp_btn_text', '_alf_dp_msg_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alf_dp_disabled', '_alf_dp_schedule', '_alf_dp_btn_text', '_alf_dp_msg_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alf_dp_disabled', '_alf_dp_schedule', '_alf_dp_btn_text', '_alf_dp_msg_text');

