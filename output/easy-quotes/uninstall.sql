-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_quotes_flush_rewrite_rules', 'easy-quotes-db-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quote_author', 'quote_date', 'quote_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('quote_author', 'quote_date', 'quote_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('quote_author', 'quote_date', 'quote_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quote_author', 'quote_date', 'quote_rating');

