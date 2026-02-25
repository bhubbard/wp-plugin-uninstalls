-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crsb_spammers_list', 'crsb_share_data', 'crsb_share_data_last', 'crsb_share_data_resp_raw', 'crsb_db_version');

