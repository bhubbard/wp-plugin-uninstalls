-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdesk_tracker_notice', 'wpdesk_tracker_agree');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wppay_channel');
DELETE FROM wp_usermeta WHERE meta_key IN ('wppay_channel');
DELETE FROM wp_termmeta WHERE meta_key IN ('wppay_channel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wppay_channel');

