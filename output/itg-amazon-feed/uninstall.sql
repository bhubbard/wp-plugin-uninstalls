-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('amzn_product_url', 'amzn_product_headline', 'amzn_product_summary', 'amzn_product_rank', 'amzn_product_award', 'amzn_product_rating', 'amzn_product_rating_value', 'amzn_product_apply_to_variants', 'amzn_product_best_rating_value', 'amzn_product_worst_rating_value', 'amzn_pubdate', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('amzn_product_url', 'amzn_product_headline', 'amzn_product_summary', 'amzn_product_rank', 'amzn_product_award', 'amzn_product_rating', 'amzn_product_rating_value', 'amzn_product_apply_to_variants', 'amzn_product_best_rating_value', 'amzn_product_worst_rating_value', 'amzn_pubdate', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('amzn_product_url', 'amzn_product_headline', 'amzn_product_summary', 'amzn_product_rank', 'amzn_product_award', 'amzn_product_rating', 'amzn_product_rating_value', 'amzn_product_apply_to_variants', 'amzn_product_best_rating_value', 'amzn_product_worst_rating_value', 'amzn_pubdate', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('amzn_product_url', 'amzn_product_headline', 'amzn_product_summary', 'amzn_product_rank', 'amzn_product_award', 'amzn_product_rating', 'amzn_product_rating_value', 'amzn_product_apply_to_variants', 'amzn_product_best_rating_value', 'amzn_product_worst_rating_value', 'amzn_pubdate', '_wp_page_template');

