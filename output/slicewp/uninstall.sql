-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slicewp_remote_add_ons', 'slicewp_helpscout_beacon_welcome', 'slicewp_website_registered', 'slicewp_setup_wizard_visited', 'slicewp_dismissed_admin_notices', 'slicewp_review_request', 'slicewp_flush_rewrite_rules', 'slicewp_license_key', 'slicewp_setup_wizard_hidden', 'slicewp_setup_wizard_current_step', 'slicewp_license_key_data', 'slicewp_first_activation', 'slicewp_migrations', 'slicewp_version', 'slicewp_settings', '_slicewp_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'slicewp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slicewp_user_preferences', '_edd_sl_is_renewal', 'slicewp_disable_commissions', 'slicewp-disable-commissions');
DELETE FROM wp_usermeta WHERE meta_key IN ('slicewp_user_preferences', '_edd_sl_is_renewal', 'slicewp_disable_commissions', 'slicewp-disable-commissions');
DELETE FROM wp_termmeta WHERE meta_key IN ('slicewp_user_preferences', '_edd_sl_is_renewal', 'slicewp_disable_commissions', 'slicewp-disable-commissions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slicewp_user_preferences', '_edd_sl_is_renewal', 'slicewp_disable_commissions', 'slicewp-disable-commissions');

