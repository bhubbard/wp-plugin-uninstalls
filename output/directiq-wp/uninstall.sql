-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('styleform', 'diq_rest_key', 'diq_recheck_authorize', 'diq_recheck_fields', 'diq_recheck_subscription_lists', 'diq_add_form_fields', 'diq_add_subscription_lists', 'sc_style', 'sc_redirect_url', 'response_status', 'sc_hide_form', 'diq_date');

