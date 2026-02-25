-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_generator_metatag_xhtml', 'no_generator_metatag_html', 'no_generator_metatag_atom', 'no_generator_metatag_rss2', 'no_generator_metatag_rdf', 'no_generator_metatag_comment', 'no_generator_metatag_export');

