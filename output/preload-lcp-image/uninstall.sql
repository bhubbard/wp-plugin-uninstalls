-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('preload_lcp_image_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lcp_url_preload', 'lcp_id_preload', 'lcp_mobile_url_preload', 'lcp_mobile_id_preload', 'lcp_force_as', 'lcp_mobile_force_as');
DELETE FROM wp_usermeta WHERE meta_key IN ('lcp_url_preload', 'lcp_id_preload', 'lcp_mobile_url_preload', 'lcp_mobile_id_preload', 'lcp_force_as', 'lcp_mobile_force_as');
DELETE FROM wp_termmeta WHERE meta_key IN ('lcp_url_preload', 'lcp_id_preload', 'lcp_mobile_url_preload', 'lcp_mobile_id_preload', 'lcp_force_as', 'lcp_mobile_force_as');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lcp_url_preload', 'lcp_id_preload', 'lcp_mobile_url_preload', 'lcp_mobile_id_preload', 'lcp_force_as', 'lcp_mobile_force_as');

