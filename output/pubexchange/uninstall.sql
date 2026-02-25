-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pubexchange_publication_id', 'pubexchange_widget_id', 'pubexchange_widget_number', 'pubexchange_link_discovery', 'pubexchange_lazy_load');

