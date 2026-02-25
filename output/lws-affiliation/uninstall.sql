-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lws_aff_apikey', 'lwsaff_do_not_ask_again', 'lwsaff_remind_me', 'lws_aff_banners', 'lws_aff_banner');

