-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsp_add_nofollow', 'wsp_posts_by_category', 'wsp_is_display_post_multiple_time', 'wsp_exclude_pages', 'wsp_exclude_cpt_page', 'wsp_exclude_cpt_post', 'wsp_exclude_cpt_archive', 'wsp_exclude_cpt_author', 'wsp_is_exclude_password_protected', 'wsp_is_display_copyright', 'wsp_version_key');
DELETE FROM wp_options WHERE option_name LIKE 'wsp_exclude_cpt_%';
DELETE FROM wp_options WHERE option_name LIKE 'wsp_exclude_taxonomy_%';

