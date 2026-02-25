-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewmi_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ewmi_subscribed_to_mailchimp', 'ewmi_mailchimp_list');
DELETE FROM wp_usermeta WHERE meta_key IN ('ewmi_subscribed_to_mailchimp', 'ewmi_mailchimp_list');
DELETE FROM wp_termmeta WHERE meta_key IN ('ewmi_subscribed_to_mailchimp', 'ewmi_mailchimp_list');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ewmi_subscribed_to_mailchimp', 'ewmi_mailchimp_list');

