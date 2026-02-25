-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_group_enable', '_group_settings', '_group_travelers', '_group_price', '_yc_is_tour', '_yc_tour_dates', '_group_prices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_group_enable', '_group_settings', '_group_travelers', '_group_price', '_yc_is_tour', '_yc_tour_dates', '_group_prices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_group_enable', '_group_settings', '_group_travelers', '_group_price', '_yc_is_tour', '_yc_tour_dates', '_group_prices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_group_enable', '_group_settings', '_group_travelers', '_group_price', '_yc_is_tour', '_yc_tour_dates', '_group_prices');

