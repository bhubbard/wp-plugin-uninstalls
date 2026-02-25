-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aec_load_kiosque_aec_build', 'aec_instance_name', 'aec_extranet_instance_name', 'aec_extranet_api_token', 'aec_etablishment_type', 'aec_course_detail_page_url', 'web_instance_domain', 'aec_template_in_use');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('arc_extranet_domain');
DELETE FROM wp_usermeta WHERE meta_key IN ('arc_extranet_domain');
DELETE FROM wp_termmeta WHERE meta_key IN ('arc_extranet_domain');
DELETE FROM wp_commentmeta WHERE meta_key IN ('arc_extranet_domain');

