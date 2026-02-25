-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccw_options', 'ht_ctc_switch', 'ht_ctc_othersettings', 'ht_ctc_s1', 'ht_ctc_admin_pages', 'ht_ctc_chat_options', 'ht_ctc_notices', 'ht_ctc_pro_plugin_details', 'ht_ctc_group', 'ht_ctc_share', 'ht_ctc_plugin_details', 'ht_ctc_admin_demo_active', 'ht_ctc_greetings_options', 'ht_ctc_greetings_settings', 'ht_ctc_cs_options', 'ht_ctc_s2', 'ht_ctc_s3', 'ht_ctc_s3_1', 'ht_ctc_s4', 'ht_ctc_s5', 'ht_ctc_s6', 'ht_ctc_s7', 'ht_ctc_s7_1', 'ht_ctc_s8', 'ht_ctc_s99', 'ht_ctc_code_blocks', 'ht_ctc_one_time', 'ht_ctc_woo_options', 'ht_ctc_main_options', 'ccw_options_cs', 'ht_ccw_ga', 'ht_ccw_fb', 'ht_ctc_greetings_1', 'ht_ctc_greetings_2', 'ccw_plugin_details', 'ht_ctc_cache_cleared_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ht_ctc_pagelevel');
DELETE FROM wp_usermeta WHERE meta_key IN ('ht_ctc_pagelevel');
DELETE FROM wp_termmeta WHERE meta_key IN ('ht_ctc_pagelevel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ht_ctc_pagelevel');

