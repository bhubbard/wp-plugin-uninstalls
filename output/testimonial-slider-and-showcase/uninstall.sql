-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rttss_ny_2022', 'rttss_bf_2021', 'rttss_plugin_activation_time', 'rttss_spare_me', 'rttss_remind_me', 'rttss_rated', 'rtts_activation_redirect', 'elementor_experiment-e_swiper_latest');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rtts_sc_tab', 'tss_layout', 'tss_designation', 'tss_company', 'tss_location', 'tss_rating', 'tss_video', 'tss_social_media', 'tss_custom_image_size', '_wp_attachment_image_alt', 'tss_author_name_style', 'tss_author_bio_style', '_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rtts_sc_tab', 'tss_layout', 'tss_designation', 'tss_company', 'tss_location', 'tss_rating', 'tss_video', 'tss_social_media', 'tss_custom_image_size', '_wp_attachment_image_alt', 'tss_author_name_style', 'tss_author_bio_style', '_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rtts_sc_tab', 'tss_layout', 'tss_designation', 'tss_company', 'tss_location', 'tss_rating', 'tss_video', 'tss_social_media', 'tss_custom_image_size', '_wp_attachment_image_alt', 'tss_author_name_style', 'tss_author_bio_style', '_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rtts_sc_tab', 'tss_layout', 'tss_designation', 'tss_company', 'tss_location', 'tss_rating', 'tss_video', 'tss_social_media', 'tss_custom_image_size', '_wp_attachment_image_alt', 'tss_author_name_style', 'tss_author_bio_style', '_order');

