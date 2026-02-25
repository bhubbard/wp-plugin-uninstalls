-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nwsfilter_settings', 'nwsfilter_categories_auto_expand', 'nwsfilter_categories_before_filter', 'nwsfilter_collapsed_default', 'nwsfilter_hide_selected_filters');

