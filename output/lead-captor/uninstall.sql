-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lead_captor_popup_options', 'lead_captor_behavior_options', 'lead_captor_mailchimp_options', 'lead_captor_export_subscribers_options');

