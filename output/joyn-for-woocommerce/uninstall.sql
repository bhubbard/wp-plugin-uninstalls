-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('joyn_api_key', 'joyn_show_on_thankyou', 'joyn_show_on_order', 'joyn_show_in_mail');

