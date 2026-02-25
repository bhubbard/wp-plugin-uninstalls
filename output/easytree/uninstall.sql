-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easytree_option_exclude_from_pages', 'easytree_option_display_authors', 'easytree_option_exclude_from_authors', 'easytree_option_show_empty_taxs', 'easytree_option_skin');

