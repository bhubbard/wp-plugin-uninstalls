-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bjl_word_count_main', 'bjl_word_count_cache', 'bjl_word_count_author', 'bjl_word_count_month');

