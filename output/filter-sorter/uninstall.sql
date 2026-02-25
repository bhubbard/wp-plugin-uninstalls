-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('filter_sorter_display_options', 'filter_sorter_social_options', 'sorter_display_options', 'sorter_social_options');

