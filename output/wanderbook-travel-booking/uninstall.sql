-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wanderbook_global_unavailable_dates', 'wanderbook_global_availability_enabled', 'wanderbook_first_day', 'wanderbook_date_format', 'wanderbook_min_lead_value', 'wanderbook_min_lead_unit', 'wanderbook_max_advance_value', 'wanderbook_max_advance_unit', 'wanderbook_flatpickr_theme', 'wanderbook_primary_color', 'wanderbook_secondary_color', 'wanderbook_labels', 'wanderbook_travel_db_version', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wander_enable_lead_time', '_wander_lead_time_days', '_wander_booking_type', '_wander_notice', '_price', '_regular_price', '_wander_price_mode', '_wander_children_allowed', '_wander_price_adult', '_wander_price_child', '_wander_price_group', '_wander_min_people', '_wander_max_people', '_wander_unavailable_dates', '_wander_disable_global_avail');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wander_enable_lead_time', '_wander_lead_time_days', '_wander_booking_type', '_wander_notice', '_price', '_regular_price', '_wander_price_mode', '_wander_children_allowed', '_wander_price_adult', '_wander_price_child', '_wander_price_group', '_wander_min_people', '_wander_max_people', '_wander_unavailable_dates', '_wander_disable_global_avail');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wander_enable_lead_time', '_wander_lead_time_days', '_wander_booking_type', '_wander_notice', '_price', '_regular_price', '_wander_price_mode', '_wander_children_allowed', '_wander_price_adult', '_wander_price_child', '_wander_price_group', '_wander_min_people', '_wander_max_people', '_wander_unavailable_dates', '_wander_disable_global_avail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wander_enable_lead_time', '_wander_lead_time_days', '_wander_booking_type', '_wander_notice', '_price', '_regular_price', '_wander_price_mode', '_wander_children_allowed', '_wander_price_adult', '_wander_price_child', '_wander_price_group', '_wander_min_people', '_wander_max_people', '_wander_unavailable_dates', '_wander_disable_global_avail');

