-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timezone_option', 'hidemenu_option', 'columns_option', 'disable_style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('data_nec_events', 'link_nec_events');
DELETE FROM wp_usermeta WHERE meta_key IN ('data_nec_events', 'link_nec_events');
DELETE FROM wp_termmeta WHERE meta_key IN ('data_nec_events', 'link_nec_events');
DELETE FROM wp_commentmeta WHERE meta_key IN ('data_nec_events', 'link_nec_events');

