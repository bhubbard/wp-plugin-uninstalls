-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('creomicro_enable_comments', 'creomicro_microposts_page_id', 'creomicro_excerpt_chars', 'creomicro_per_page', 'creomicro_single_template_choice');

