-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'content.json', 'widgets.json', 'options.json', 'delayed_posts', 'imported_term_ids', 'imported_post_ids', 'post_orphans');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

