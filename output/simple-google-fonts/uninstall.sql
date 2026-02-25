-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgf_global_for_single_id', 'sgf_global_posts_ids');

