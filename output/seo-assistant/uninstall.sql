-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_assistant_google_webmaster', 'seo_assistant_google_analytical', 'seo_assistant_google_tag_manager', 'seo_assistant_meta_pixel', 'seo_assistant_fb_domain_verification');

