-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bolt_news_enable', 'bolt_news_label', 'bolt_news_data', 'bolt_news_titolo', 'bolt_news_testo');

