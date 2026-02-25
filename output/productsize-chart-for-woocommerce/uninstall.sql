-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('productsize_chart_settings', 'nc_size_chart_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prod-chart', 'label', 'primary-chart-image', 'primary-image-position', 'title-color', 'text-color', 'overlay-color', 'table-style', 'chart-padding', 'position', 'button-position', 'chart-categories', 'chart-table', 'chart-1', 'chart-2', 'chart-content');
DELETE FROM wp_usermeta WHERE meta_key IN ('prod-chart', 'label', 'primary-chart-image', 'primary-image-position', 'title-color', 'text-color', 'overlay-color', 'table-style', 'chart-padding', 'position', 'button-position', 'chart-categories', 'chart-table', 'chart-1', 'chart-2', 'chart-content');
DELETE FROM wp_termmeta WHERE meta_key IN ('prod-chart', 'label', 'primary-chart-image', 'primary-image-position', 'title-color', 'text-color', 'overlay-color', 'table-style', 'chart-padding', 'position', 'button-position', 'chart-categories', 'chart-table', 'chart-1', 'chart-2', 'chart-content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prod-chart', 'label', 'primary-chart-image', 'primary-image-position', 'title-color', 'text-color', 'overlay-color', 'table-style', 'chart-padding', 'position', 'button-position', 'chart-categories', 'chart-table', 'chart-1', 'chart-2', 'chart-content');

