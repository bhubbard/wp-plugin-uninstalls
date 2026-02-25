-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ws4agpt_manager', 'ws4agpt_settings', 'ws4agpt_aeS25_wsfa_wsfa', 'ws4agpt_auto_seo_pro_active', 'ws4agpt_promo_heading', 'ws4agpt_promo_subtext', 'ws4agpt_promo_image', 'ws4agpt_promo_link', 'ws4agpt_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('article_length', 'density', 'is_wp_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('article_length', 'density', 'is_wp_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('article_length', 'density', 'is_wp_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('article_length', 'density', 'is_wp_post');

