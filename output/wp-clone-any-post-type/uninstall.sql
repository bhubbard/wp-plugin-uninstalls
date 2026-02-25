-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcapt_clone_post_types', 'wp_any_posts_clone_notice');

