-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mtags_keywords', 'mtags_description', 'mtags_update', 'mtags_opt_description', 'mtags_opt_keywords', 'mtags_opt_rsd', 'mtags_opt_wlwmanifest', 'mtags_opt_generator', 'mtags_opt_start_post_rel', 'mtags_opt_index_rel', 'mtags_opt_adjacent_posts_rel');

