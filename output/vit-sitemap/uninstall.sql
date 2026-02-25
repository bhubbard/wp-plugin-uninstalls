-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vitsitemap_new_tab_opening', 'vitsitemap_exclude_ids');

