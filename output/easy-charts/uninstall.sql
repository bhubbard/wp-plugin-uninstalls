-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ec_chart_type', '_ec_chart_meta', '_ec_chart_graph', '_ec_chart_dimension', '_ec_chart_margin', '_ec_chart_frame', '_ec_chart_axis', '_ec_chart_label', '_ec_chart_legend', '_ec_chart_scale', '_ec_chart_tooltip', '_ec_chart_caption', '_ec_chart_subcaption', '_ec_chart_bar', '_ec_chart_line', '_ec_chart_area', '_ec_chart_pie', '_ec_chart_donut', '_easy_charts_chart_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ec_chart_type', '_ec_chart_meta', '_ec_chart_graph', '_ec_chart_dimension', '_ec_chart_margin', '_ec_chart_frame', '_ec_chart_axis', '_ec_chart_label', '_ec_chart_legend', '_ec_chart_scale', '_ec_chart_tooltip', '_ec_chart_caption', '_ec_chart_subcaption', '_ec_chart_bar', '_ec_chart_line', '_ec_chart_area', '_ec_chart_pie', '_ec_chart_donut', '_easy_charts_chart_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ec_chart_type', '_ec_chart_meta', '_ec_chart_graph', '_ec_chart_dimension', '_ec_chart_margin', '_ec_chart_frame', '_ec_chart_axis', '_ec_chart_label', '_ec_chart_legend', '_ec_chart_scale', '_ec_chart_tooltip', '_ec_chart_caption', '_ec_chart_subcaption', '_ec_chart_bar', '_ec_chart_line', '_ec_chart_area', '_ec_chart_pie', '_ec_chart_donut', '_easy_charts_chart_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ec_chart_type', '_ec_chart_meta', '_ec_chart_graph', '_ec_chart_dimension', '_ec_chart_margin', '_ec_chart_frame', '_ec_chart_axis', '_ec_chart_label', '_ec_chart_legend', '_ec_chart_scale', '_ec_chart_tooltip', '_ec_chart_caption', '_ec_chart_subcaption', '_ec_chart_bar', '_ec_chart_line', '_ec_chart_area', '_ec_chart_pie', '_ec_chart_donut', '_easy_charts_chart_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ec_chart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ec_chart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ec_chart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ec_chart_%';

