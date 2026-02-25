-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_settings', 'eddms_force_refresh', 'eddms_mailchimp_mailinglist', 'eddms_mailchimp_stats');

