-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpchat_entitlement_token', 'wpchat_entitlement_hash', 'wpchat_entitlement_grace_start', 'wpchat_license_expired_notice', 'wpchat_license_invalid_notice', 'wpchat_license_expiring_notice', 'wpchat_license_failure_count', 'wpchat_license_last_failure', 'active_sitewide_plugins', 'wpchat_faqs_seeded', 'wpchat_funnels_visibility_map', 'wpchat_needs_pro_migrations', 'wpchat_db_version', 'wpchat_license_key', 'wpchat_license_status', 'wpchat_keys_last_refresh', 'wpchat_available_platforms', 'wpchat_pro_migrations_verified', 'wpchat_activation_redirect', 'wpchat_deactivated_notice_id', 'wpchat_plugin_info', 'update_plugins', 'wpchat_public_keys_cache');

