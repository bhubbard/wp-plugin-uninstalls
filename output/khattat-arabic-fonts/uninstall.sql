-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('khattat_arabic_activation_time', 'khattat_last_notice_time');

