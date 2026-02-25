-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_author_slug_conflicts');
DELETE FROM wp_options WHERE option_name LIKE 'feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_mod_%';

