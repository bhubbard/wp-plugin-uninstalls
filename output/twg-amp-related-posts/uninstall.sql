-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twg_amp_related_posts_count', 'twg_amp_related_posts_orderby', 'twg_amp_related_posts_show_thumbnail');

