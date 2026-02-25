-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ab_cart_tables_exist', 'elex_abandoned_cart_email_rules', 'elex_abandoned_cart_email_setup', 'woocommerce_elex_ab_cart_settings', 'elex_ac_restriction_settings', 'elex_ab_temp_data', 'eh_ab_log_settings', 'elex_email_default_templates', 'elex_default_rule', 'elex_default_trigger', 'elex_shopowner_email_default_template');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');

