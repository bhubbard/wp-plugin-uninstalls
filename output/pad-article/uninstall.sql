-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pad_a_auto_update_data', 'PAD_a_auto_update_desc', 'regnow_affiliae_id', 'PAD_a_auto_acc', 'PAD_a_auto_update_data', 'regnow_affiliate_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('PAD_a_download_count', 'PAD_a_d_url', 'PAD_a_url', 'PAD_a_s_version', 'PAD_a_release_date', 'PAD_a_screenshot', 'PAD_a_o_url', 'PAD_a_licence', 'PAD_a_os', 'PAD_a_lang', 'PAD_a_price', 'PAD_a_regnow_p_id', 'PAD_a_editor_url', 'PAD_a_editor', 'PAD_a_is_software');
DELETE FROM wp_usermeta WHERE meta_key IN ('PAD_a_download_count', 'PAD_a_d_url', 'PAD_a_url', 'PAD_a_s_version', 'PAD_a_release_date', 'PAD_a_screenshot', 'PAD_a_o_url', 'PAD_a_licence', 'PAD_a_os', 'PAD_a_lang', 'PAD_a_price', 'PAD_a_regnow_p_id', 'PAD_a_editor_url', 'PAD_a_editor', 'PAD_a_is_software');
DELETE FROM wp_termmeta WHERE meta_key IN ('PAD_a_download_count', 'PAD_a_d_url', 'PAD_a_url', 'PAD_a_s_version', 'PAD_a_release_date', 'PAD_a_screenshot', 'PAD_a_o_url', 'PAD_a_licence', 'PAD_a_os', 'PAD_a_lang', 'PAD_a_price', 'PAD_a_regnow_p_id', 'PAD_a_editor_url', 'PAD_a_editor', 'PAD_a_is_software');
DELETE FROM wp_commentmeta WHERE meta_key IN ('PAD_a_download_count', 'PAD_a_d_url', 'PAD_a_url', 'PAD_a_s_version', 'PAD_a_release_date', 'PAD_a_screenshot', 'PAD_a_o_url', 'PAD_a_licence', 'PAD_a_os', 'PAD_a_lang', 'PAD_a_price', 'PAD_a_regnow_p_id', 'PAD_a_editor_url', 'PAD_a_editor', 'PAD_a_is_software');

