-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ocssl', 'ocssl_areas', 'ocssl_activation_redirect', 'ocssl_nonsslredirect', 'ocssl_ratereview_scheduled', 'ocssl_dismissed-ssloff', 'ocssl_dismissed-ratereview', 'ocssl_toolsmenu', 'ocssl_global', 'ocssl_showmessage_ratereview', 'ocssl_hidemessage_ratereview', 'one_click_ssl_smart_rating_dismissed', 'ocssl_auth_username', 'ocssl_auth_password', 'ocssl_basic_auth_required', 'ocssl_settings_notice');
DELETE FROM wp_options WHERE option_name LIKE 'ocssl_dismissed-%';

