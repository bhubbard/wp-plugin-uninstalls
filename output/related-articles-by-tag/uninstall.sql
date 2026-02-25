-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('related_articles_by_tag_mode', 'related_articles_by_tag_title_type', 'related_articles_by_tag_title', 'related_articles_by_tag_apply', 'related_articles_by_tag_order');

