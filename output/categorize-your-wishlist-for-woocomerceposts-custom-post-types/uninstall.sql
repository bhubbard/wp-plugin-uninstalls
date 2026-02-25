-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwwpcpt_db_version', 'cwwpcpt_options', 'cwwpcpt_multi_posts_options');

