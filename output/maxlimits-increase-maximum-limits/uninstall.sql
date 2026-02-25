-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maxlimits_tracking_pending', 'maxlimits_allow_tracking', 'maxlimits_just_activated', 'maxlimits_insights_consent', 'maxlimits_install_event_sent', 'woocommerce_default_country', 'maxlimits_version_tracked', 'maxlimits_insights_notice_dismissed', 'maxlimits_shop_notice_data');

