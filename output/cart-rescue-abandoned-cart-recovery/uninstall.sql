-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cracr_cart_abandoned_time', 'cracr_auto_delete_enable', 'cracr_auto_delete_days', 'cracr_auto_delete_statuses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cracr_is_active', '_cracr_send_delay', '_cracr_email_subject');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cracr_is_active', '_cracr_send_delay', '_cracr_email_subject');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cracr_is_active', '_cracr_send_delay', '_cracr_email_subject');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cracr_is_active', '_cracr_send_delay', '_cracr_email_subject');

