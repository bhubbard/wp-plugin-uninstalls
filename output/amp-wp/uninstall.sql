-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'amp_wp_general_settings', 'amp_wp_ga', 'amp_wp_fbp', 'amp_wp_sa', 'amp_wp_qc', 'amp_wp_acm', 'amp_wp_cb', 'amp_wp_comscore', 'amp_wp_yandex_metrica', 'amp_wp_afs', 'amp_wp_adobe', 'amp_wp_gdpr_settings', 'amp_wp_layout_settings', 'amp_wp_noticebar_settings', 'amp_wp_social_links_settings', 'amp_wp_structured_data_settings', 'amp_wp_third_party_plugins_support_settings', 'amp-wp-translation', 'WpFastestCache', 'wpb_rs/settings/snippets_in_footer', 'amp-wp-flush-rules', '_amp_wp_page_welcome_redirect', 'amp_wp_system_status_wp_version_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disable-amp-wp', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_amp_wp_social_share_interval');
DELETE FROM wp_usermeta WHERE meta_key IN ('disable-amp-wp', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_amp_wp_social_share_interval');
DELETE FROM wp_termmeta WHERE meta_key IN ('disable-amp-wp', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_amp_wp_social_share_interval');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disable-amp-wp', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_amp_wp_social_share_interval');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_amp_wp_social_share_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_amp_wp_social_share_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_amp_wp_social_share_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_amp_wp_social_share_%';

