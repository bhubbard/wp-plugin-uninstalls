-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninfa_archives_noindex', 'ninfa_archives_nofollow', 'ninfa_categories_noindex', 'ninfa_categories_nofollow', 'ninfa_tags_noindex', 'ninfa_tags_nofollow');

