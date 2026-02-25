-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpm_timefix_general_settings', 'wpm_timefix_permalink_settings', 'wpm_timefix_payment_settings', 'wpm_timefix_offline_payment_settings', 'wpm_timefix_email_settings', 'wpm_timefix_needs_flush', 'wpm_timefix_installing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_timefix_image', '_timefix_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_timefix_image', '_timefix_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_timefix_image', '_timefix_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_timefix_image', '_timefix_order');

