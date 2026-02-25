-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_excerpt_generator_maj', 'wp_excerpt_generator_method', 'wp_excerpt_generator_owntag', 'wp_excerpt_generator_nbletters', 'wp_excerpt_generator_nbwords', 'wp_excerpt_generator_nbparagraphs', 'wp_excerpt_generator_cleaner', 'wp_excerpt_generator_htmlOK', 'wp_excerpt_generator_htmlBR', 'wp_excerpt_generator_breakOK', 'wp_excerpt_generator_break', 'wp_excerpt_generator_status', 'wp_excerpt_generator_type', 'wp_excerpt_generator_delete_shortcode', 'wp_excerpt_generator_save', 'wp_excerpt_generator_deleteExcerpt', 'wp_excerpt_generator_version');

