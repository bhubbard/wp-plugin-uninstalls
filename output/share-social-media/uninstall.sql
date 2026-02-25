-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stssm_redirect_to_settings', 'stssm_sticky_placement', 'stssm_pages_placement', 'stssm_posts_placement', 'stssm_icons_content', 'stssm_icons_sticky', 'stssm_icons_sticky_all', 'stssm_content_icons_design', 'stssm_sticky_icons_design');

