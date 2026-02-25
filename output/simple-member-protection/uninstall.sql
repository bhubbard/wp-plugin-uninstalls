-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smprotection_membership_levels', 'smprotection_enable_protection', 'smprotection_thank_you_page_url', 'stripe_secret_key', 'stripe_publishable_key', 'smprotection_stripe_mode', 'smprotection_stripe_live_secret', 'smprotection_stripe_test_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('membership_level', '_smprotection_required_membership_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('membership_level', '_smprotection_required_membership_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('membership_level', '_smprotection_required_membership_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('membership_level', '_smprotection_required_membership_level');

