-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quform_mailchimp_activated', 'quform_mailchimp_db_version', 'quform_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quform_mailchimp_integrations_order_by', 'quform_mailchimp_integrations_order', 'quform_mailchimp_integrations_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('quform_mailchimp_integrations_order_by', 'quform_mailchimp_integrations_order', 'quform_mailchimp_integrations_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('quform_mailchimp_integrations_order_by', 'quform_mailchimp_integrations_order', 'quform_mailchimp_integrations_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quform_mailchimp_integrations_order_by', 'quform_mailchimp_integrations_order', 'quform_mailchimp_integrations_per_page');

