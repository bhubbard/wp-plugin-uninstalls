-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clarity_seo_activation_time', 'clarity_seo_settings', 'clarity_seo_gsc_access_token', 'clarity_seo_social_links', 'clarity_seo_logo_url', 'clarity_seo_contact_phone', 'clarity_seo_auto_image_alt', 'clarity_seo_local_address', 'clarity_seo_redirects', 'clarity_seo_tracked_keywords', 'clarity_seo_default_og_image', 'clarity_seo_wizard_completed', 'clarity_seo_db_version', 'clarity_seo_404_logs', 'clarity_seo_gsc_site_url', 'clarity_seo_local_geo', 'clarity_seo_organization_description', 'clarity_seo_contact_type', 'clarity_seo_enable_organization', 'clarity_seo_enable_faq', 'clarity_seo_enable_video', 'clarity_seo_enable_multiple', 'clarity_seo_default_keywords', 'clarity_seo_gsc_key', 'clarity_seo_keyword_history');
DELETE FROM wp_options WHERE option_name LIKE 'clarity_seo_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_clarity_seo_noindex', '_clarity_seo_meta_title', '_clarity_seo_meta_description', '_clarity_seo_meta_keywords', '_clarity_seo_og_image', '_clarity_seo_focus_keywords', 'clarity_seo_review_dismissed', '_clarity_seo_type', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_clarity_seo_service', '_clarity_seo_disable', '_clarity_seo_include_org');
DELETE FROM wp_usermeta WHERE meta_key IN ('_clarity_seo_noindex', '_clarity_seo_meta_title', '_clarity_seo_meta_description', '_clarity_seo_meta_keywords', '_clarity_seo_og_image', '_clarity_seo_focus_keywords', 'clarity_seo_review_dismissed', '_clarity_seo_type', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_clarity_seo_service', '_clarity_seo_disable', '_clarity_seo_include_org');
DELETE FROM wp_termmeta WHERE meta_key IN ('_clarity_seo_noindex', '_clarity_seo_meta_title', '_clarity_seo_meta_description', '_clarity_seo_meta_keywords', '_clarity_seo_og_image', '_clarity_seo_focus_keywords', 'clarity_seo_review_dismissed', '_clarity_seo_type', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_clarity_seo_service', '_clarity_seo_disable', '_clarity_seo_include_org');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_clarity_seo_noindex', '_clarity_seo_meta_title', '_clarity_seo_meta_description', '_clarity_seo_meta_keywords', '_clarity_seo_og_image', '_clarity_seo_focus_keywords', 'clarity_seo_review_dismissed', '_clarity_seo_type', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_clarity_seo_service', '_clarity_seo_disable', '_clarity_seo_include_org');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

