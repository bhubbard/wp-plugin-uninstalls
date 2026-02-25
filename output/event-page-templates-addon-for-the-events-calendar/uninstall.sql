-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epta-install-date', 'epta_initial_save_version', 'tecset-installDate', 'tecset-ratingDiv', 'epta_elementor_notice_dismissed', 'tec_tribe_single_event_page', 'tecset-single-page-id', 'cpfm_opt_in_choice_cool_events', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'epta-apply-on', 'epta-categoery', 'epta-tag', 'epta-specific-event', 'epta-select-temp', 'epta-primary-color', 'epta-secondary-alternate-color', 'epta-alternate-primary-color', 'epta-url', 'tecset-date-format', 'epta-custom-css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'epta-apply-on', 'epta-categoery', 'epta-tag', 'epta-specific-event', 'epta-select-temp', 'epta-primary-color', 'epta-secondary-alternate-color', 'epta-alternate-primary-color', 'epta-url', 'tecset-date-format', 'epta-custom-css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'epta-apply-on', 'epta-categoery', 'epta-tag', 'epta-specific-event', 'epta-select-temp', 'epta-primary-color', 'epta-secondary-alternate-color', 'epta-alternate-primary-color', 'epta-url', 'tecset-date-format', 'epta-custom-css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'epta-apply-on', 'epta-categoery', 'epta-tag', 'epta-specific-event', 'epta-select-temp', 'epta-primary-color', 'epta-secondary-alternate-color', 'epta-alternate-primary-color', 'epta-url', 'tecset-date-format', 'epta-custom-css');

