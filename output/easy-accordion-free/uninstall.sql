-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_eap_settings', 'sp_eafree_review_notice_dismiss', 'sp_eap_flush_rewrite_rules', 'easy_accordion_free_version', 'easy_accordion_free_first_version', 'easy_accordion_free_activation_date', 'easy_accordion_free_db_version', '_transient_timeout_sp-eap-framework-transient', '_transient_sp-eap-framework-transient', '_transient_timeout_eapro-metabox-transient', '_transient_eapro-metabox-transient', '_transient_timeout_spf-eap-framework-transient', '_transient_spf-eap-framework-transient', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'spea_plugins_data', 'spea_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'easy_accordion_page_id%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_eap_upload_options', 'sp_eap_shortcode_options', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_eap_upload_options', 'sp_eap_shortcode_options', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_eap_upload_options', 'sp_eap_shortcode_options', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_eap_upload_options', 'sp_eap_shortcode_options', '_elementor_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_eapro_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_eapro_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_eapro_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_eapro_errors_%';

