-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weblizar_wnlsp_options', 'weblizar_nls_options', 'weblizar_nls_mailchimp_key', 'weblizar_nls_madmimi_list', 'nls_nht_plugin_do_activation_redirect', 'weblizar_nls_mailchimp_list');

