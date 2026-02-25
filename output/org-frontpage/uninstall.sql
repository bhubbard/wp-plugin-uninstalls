-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ofp_nb_posts_frontpage', 'ofp_nb_posts_lead');
DELETE FROM wp_options WHERE option_name LIKE 'ofp_post_frontpage_%';

