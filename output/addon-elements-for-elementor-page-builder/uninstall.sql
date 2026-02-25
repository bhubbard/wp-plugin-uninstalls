-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wts_eae_elements', 'eae_review', 'elementor_controls_usage', 'fv_downloaded', 'wts_eae_gmap_key', 'wts_eae_youtube_api_key', 'use_tsParticle', 'eae_remind_later', 'fv_download_later');

