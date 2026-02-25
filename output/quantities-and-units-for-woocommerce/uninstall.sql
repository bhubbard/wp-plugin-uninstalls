-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipq_options', 'ipq_rules_guest');
DELETE FROM wp_options WHERE option_name LIKE 'ipq_rules_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_priority', '_min', '_max', '_step', '_cats', '_tags', '_roles', '_min_oos', '_max_oos', '_wpbo_deactive', '_wpbo_step', '_wpbo_minimum', '_wpbo_maximum', '_wpbo_override', '_wpbo_minimum_oos', '_wpbo_maximum_oos', 'unit', 'wpbo_thumbnail_input_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_priority', '_min', '_max', '_step', '_cats', '_tags', '_roles', '_min_oos', '_max_oos', '_wpbo_deactive', '_wpbo_step', '_wpbo_minimum', '_wpbo_maximum', '_wpbo_override', '_wpbo_minimum_oos', '_wpbo_maximum_oos', 'unit', 'wpbo_thumbnail_input_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_priority', '_min', '_max', '_step', '_cats', '_tags', '_roles', '_min_oos', '_max_oos', '_wpbo_deactive', '_wpbo_step', '_wpbo_minimum', '_wpbo_maximum', '_wpbo_override', '_wpbo_minimum_oos', '_wpbo_maximum_oos', 'unit', 'wpbo_thumbnail_input_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_priority', '_min', '_max', '_step', '_cats', '_tags', '_roles', '_min_oos', '_max_oos', '_wpbo_deactive', '_wpbo_step', '_wpbo_minimum', '_wpbo_maximum', '_wpbo_override', '_wpbo_minimum_oos', '_wpbo_maximum_oos', 'unit', 'wpbo_thumbnail_input_notice');

