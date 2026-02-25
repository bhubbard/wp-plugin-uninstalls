-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digiconsent_settings', 'digiconsent_activation_timestamp', 'digiconsent_review_notice_dismissed', 'digiconsent_review_notice_dismissed_temporarily', 'digiconsent_pro_license_details');

