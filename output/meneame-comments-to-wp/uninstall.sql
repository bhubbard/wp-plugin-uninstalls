-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meneame_comments', 'meneame_comments__check_cache2', 'meneame_comments__check_cache');

