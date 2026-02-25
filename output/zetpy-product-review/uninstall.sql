-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zetpy_product_review_settings', 'zetpy_product_review_db_version', 'zetpy_product_review_activated_at', 'zetpy_product_review_version', 'zetpy_product_review_show_update_notice', 'zetpy_product_review_update_notice_dismissed', 'zetpy_rewrite_rules_flushed', 'zetpy_rewrite_rules_version');
DELETE FROM wp_options WHERE option_name LIKE 'zetpy_product_reviews_%';
DELETE FROM wp_options WHERE option_name LIKE 'zetpy_featured_reviews_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zetpy_helpful_votes', '_zetpy_review_stats');
DELETE FROM wp_usermeta WHERE meta_key IN ('zetpy_helpful_votes', '_zetpy_review_stats');
DELETE FROM wp_termmeta WHERE meta_key IN ('zetpy_helpful_votes', '_zetpy_review_stats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zetpy_helpful_votes', '_zetpy_review_stats');

