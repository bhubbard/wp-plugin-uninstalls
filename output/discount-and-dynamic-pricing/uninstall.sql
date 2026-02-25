-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thwdpf_since', 'active_sitewide_plugins', 'thwdpf_advanced_settings', 'thwdpf_review_request_notice_dismissed', 'thwdpf_skip_review_request_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thwdpf_deactivation_snooze');
DELETE FROM wp_usermeta WHERE meta_key IN ('thwdpf_deactivation_snooze');
DELETE FROM wp_termmeta WHERE meta_key IN ('thwdpf_deactivation_snooze');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thwdpf_deactivation_snooze');

