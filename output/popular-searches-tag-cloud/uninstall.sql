-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('searchTagCloudOption', 'widgetText', 'max_size', 'min_size', 'total_tags', 'checkbox_visible', 'show_author_credit', 'days_to_display');

