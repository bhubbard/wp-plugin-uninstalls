-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('audiotyped_hide_avatars_arrows', 'audiotyped_tb_color', 'audiotyped_gb_color', 'audiotyped_hb_color', 'audiotyped_gf_color', 'audiotyped_hf_color', 'audiotyped_avatar', 'audiotyped_bubble', 'audiotyped_mf_size', 'audiotyped_df_size', 'audiotyped_shadow_blur', 'audiotyped_dgap_size', 'audiotyped_dc_size', 'audiotyped_ma_size', 'audiotyped_md_size', 'audiotyped_mbpv_size', 'audiotyped_mbph_size', 'audiotyped_dbpv_size', 'audiotyped_dbph_size', 'audiotyped_mgap_size', 'audiotyped_g2b_color', 'audiotyped_g2f_color');

