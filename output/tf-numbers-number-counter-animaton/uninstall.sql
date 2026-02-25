-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_sample_license_key', 'tf_controller_license_key', 'edd_sample_license_status', 'tf_auto_increment_license_key', 'tf_iconizer_license_key', 'tf_animator_license_key', 'tf_currencies_license_key', 'tf_parallax_license_key', 'tf_bundle_license_key', 'tf_promo', 'tf-activated', 'tf_footer_style_version', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_tf_stat', '_tf_bg', '_tf_bgc', '_tf_bgct', '_tf_tc', '_tf_ic', '_tf_ctc', '_tf_nc', '_tf_ics', '_tf_border_type', '_tf_boc', '_tf_border', '_tf_tts', '_tf_nbs', '_tf_layout', '_tf_nmh', '_tf_sp', '_tf_nmt', '_tf_nmtd', '_tf_nma', '_tf_nmad', '_tf_cm', '_tf_cmo', '_tf_tvm');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_tf_stat', '_tf_bg', '_tf_bgc', '_tf_bgct', '_tf_tc', '_tf_ic', '_tf_ctc', '_tf_nc', '_tf_ics', '_tf_border_type', '_tf_boc', '_tf_border', '_tf_tts', '_tf_nbs', '_tf_layout', '_tf_nmh', '_tf_sp', '_tf_nmt', '_tf_nmtd', '_tf_nma', '_tf_nmad', '_tf_cm', '_tf_cmo', '_tf_tvm');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_tf_stat', '_tf_bg', '_tf_bgc', '_tf_bgct', '_tf_tc', '_tf_ic', '_tf_ctc', '_tf_nc', '_tf_ics', '_tf_border_type', '_tf_boc', '_tf_border', '_tf_tts', '_tf_nbs', '_tf_layout', '_tf_nmh', '_tf_sp', '_tf_nmt', '_tf_nmtd', '_tf_nma', '_tf_nmad', '_tf_cm', '_tf_cmo', '_tf_tvm');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_tf_stat', '_tf_bg', '_tf_bgc', '_tf_bgct', '_tf_tc', '_tf_ic', '_tf_ctc', '_tf_nc', '_tf_ics', '_tf_border_type', '_tf_boc', '_tf_border', '_tf_tts', '_tf_nbs', '_tf_layout', '_tf_nmh', '_tf_sp', '_tf_nmt', '_tf_nmtd', '_tf_nma', '_tf_nmad', '_tf_cm', '_tf_cmo', '_tf_tvm');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tf_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tf_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tf_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tf_%';

