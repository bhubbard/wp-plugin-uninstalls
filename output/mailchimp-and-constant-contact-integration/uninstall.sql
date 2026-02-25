-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailchimp_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mailchimp_checkout', 'cc_checkout');
DELETE FROM wp_usermeta WHERE meta_key IN ('mailchimp_checkout', 'cc_checkout');
DELETE FROM wp_termmeta WHERE meta_key IN ('mailchimp_checkout', 'cc_checkout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mailchimp_checkout', 'cc_checkout');

