-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubcf7db_view_install_date', 'cubcf7db_options', 'cubcf7db_blog_ids_transient');

