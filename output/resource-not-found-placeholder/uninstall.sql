-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eos_rnfp_activation_info', 'eos_rnfp_version', 'rnfp-notice-fail', 'eos-rnfp-notice-fail');

