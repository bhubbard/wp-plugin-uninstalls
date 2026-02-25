-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embeddedposts_page_taxonomies_options', 'embeddedposts_template_all_link', 'embeddedposts_get_the_title', 'embeddedposts_get_the_title_link', 'embeddedposts_get_the_thumbnail', 'embeddedposts_get_the_thumbnail_link', 'embeddedposts_get_the_author', 'embeddedposts_the_category', 'embeddedposts_the_tags', 'embeddedposts_the_excerpt');

