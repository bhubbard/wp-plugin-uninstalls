-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parcello_token', 'parcello_tracking_page', 'parcello_tracking_method', 'parcello_tracking_carrier_field', 'parcello_tracking_id_field');

